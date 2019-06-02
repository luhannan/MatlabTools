function im_paths = all_images(src_folder)
%%%%
% Get All Images` Path From src_folder
%%%%
exts = ['*.png', '*.jpg', '*.jpeg', '*.bmp', '*.PNG', '*.JPG', '*.JPEG', '*.BMP'];
im_paths = {};
for i = 1 : length(exts)
    im_path = dir(fullfile(src_folder, char(exts(i))));
    im_paths = cat(1, im_path, im_paths);
end