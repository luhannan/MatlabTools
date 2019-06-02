function im = image_combine(patchs, ori_im, psize, overlap)
%%%%
% Combine Patches to Single Image
% :param patchs: cell(h_blocks, w_blocks)
% :param ori_im: target image of size(h, w)
% :param psize: patch size
% :param overlap: overlap pixel of patch
%%%%
    [h, w, c] = size(ori_im);
    im = zeros(h, w, c);
    [h_blocks, w_blocks] = size(patchs);
    for i = 1 : h_blocks
        for j = 1 : w_blocks
            if i == h_blocks
                end_h = h;
            else
                end_h = i * psize;
            end
            if j == w_blocks
                end_w = w;
            else
                end_w = j * psize;
            end
            patch = patchs{i, j};
%             size(im((i - 1) * psize + 1 : end_h, (j - 1) * psize + 1 : end_w, :))
%             size(patch(1 + overlap:end - overlap, 1 + overlap:end - overlap, :))
            im((i - 1) * psize + 1 : end_h, (j - 1) * psize + 1 : end_w, :)...
                = patch(1 + overlap:end - overlap, 1 + overlap:end - overlap, :);
        end
    end
end