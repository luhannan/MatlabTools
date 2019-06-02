function folder_resize(src_folder, result_folder, scale, pool_size)
%%%%
% Reszie Folder Images using multi-processing
%%%%
if nargin == 3
    pool_size = 4;
end

filepaths = all_images(src_folder);

count = 0;

if pool_size > 1
    parpool(pool_size);
    parfor i=1:length(filepaths)
        im_name = filepaths(i).name;
        image = imread(fullfile(src_folder, name));
        im_r = imresize(image, scale, 'bicubic');
        imwrite(im_r, fullfile(result_folder, im_name));
        fprintf('Saving %s\n', im_name);
    end
else
    for i=1:length(filepaths)
        im_name = filepaths(i).name;
        image = imread(fullfile(src_folder, name));
        im_r = imresize(image, scale, 'bicubic');
        imwrite(im_r, fullfile(result_folder, im_name));
        fprintf('Saving %s\n', im_name);
    end
end
