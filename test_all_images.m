clc;
clear;

set_path = '/home/lhn/hard_drive/SR_EXP/SR_STN/testsets/Vali100_rand36';
im_paths = all_images(set_path);


% exts = ['*.png', '*.jpg', '*.jpeg', '*.bmp', '*.PNG', '*.JPG', '*.JPEG', '*.BMP'];

% paths = dir(set_path);
% im_paths = {};
% for i = 3 : length(paths)
%     path = fullfile(paths(i).folder, paths(i).name);
%     if isdir(path)
%         tmp_paths = all_images(path);
%         im_paths = cat(1, tmp_paths, im_paths);
%     else
%         for j = 1 : length(exts)
%             im_path = dir(fullfile(src_folder, char(exts(j))));
%             im_paths = cat(1, im_path, im_paths);
%         end
%     end
%     
% end


% paths = paths(3 : length(paths))

% im_paths = {};
% for i = 1 : length(exts)
%     im_path = dir(fullfile(src_folder, char(exts(i))));
%     im_paths = cat(1, im_path, im_paths);
% end