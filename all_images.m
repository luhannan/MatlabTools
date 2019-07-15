function im_paths = all_images(src_folder)
%%%%
% Get All Images` Path From src_folder
%%%%
% exts = {'*.png', '*.jpg', '*.jpeg', '*.bmp', '*.PNG', '*.JPG', '*.JPEG', '*.BMP'};
exts = {'.png', '.jpg', '.jpeg', '.bmp', '.PNG', '.JPG', '.JPEG', '.BMP'};
% im_paths = {};
% for i = 1 : length(exts)
%     im_path = dir(fullfile(src_folder, char(exts{i})));
%     im_paths = cat(1, im_path, im_paths);
% end

paths = dir(src_folder);
im_paths = {};
for i = 3 : length(paths)
    path = fullfile(paths(i).folder, paths(i).name);
    if isdir(path)
        tmp_paths = all_images(path);
        im_paths = cat(1, tmp_paths, im_paths);
    else
        [~, img_name, ext] = fileparts(path);
        if sum(strcmp(exts, ext))
            im_paths = cat(1, paths(i), im_paths);
        end
    end
    
end
