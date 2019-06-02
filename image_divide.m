function patchs = image_divide(im, psize, overlap)
%%%%
% Divide Image to patches of size(psize + overlap, psize + overlap)
%%%%
    [h, w, c] = size(im);    
    h_blocks = int16(h / psize);
    w_blocks = int16(w / psize);
    im_pad = padarray(im, [overlap, overlap], 'symmetric');
    h = h + 2 * overlap;
    w = w + 2 * overlap;
    patchs = cell(h_blocks, w_blocks);
    for h_b = 1 : h_blocks
        for w_b = 1 : w_blocks
            if h_b == h_blocks
                end_h = h;
            else
                end_h = h_b * psize + 2 * overlap;
            end
            if w_b == w_blocks
                end_w = w;
            else
                end_w = w_b * psize + 2 * overlap;
            end
            im_patch = im_pad(1 + (h_b - 1) * psize : end_h,...
                1 + (w_b - 1) * psize : end_w, :);
            patchs{h_b, w_b} = im_patch;
        end
    end
end