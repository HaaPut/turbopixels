% Runs the superpixel code on the lizard image

addpath(genpath('./lsmlib'));
img_name = 'lizard';
img = im2double(imread([img_name,'.jpg']));
fprintf("read image\n");
[phi,boundary,disp_img, frames] = superpixels(img, 1500, 1);
disp('Press any key to view the evolution movie');
pause;
movie(frames);
v = VideoWriter([img_name,'.avi'],'Motion JPEG AVI');
open(v)
for i = 1:length(frames)
    frame = frames(i).cdata;
    writeVideo(v,frame)
end
close(v);
figure, imshow(disp_img);


