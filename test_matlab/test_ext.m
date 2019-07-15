exts = {'*.png', '*.jpg'};
im_paths = {};
for i = 1 : length(exts)
    im_path = dir(fullfile('./test_img', char(exts(i))));
    im_paths = cat(1, im_path, im_paths);
end