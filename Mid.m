function Mid
clc
clear all
close all
[filename] =uigetfile({'*'}, 'File Selecror');
I=imread(filename);%I
old_image=imnoise(I,'salt & pepper',0.1);
%s=[];
[r,c]=size(old_image);
output=old_image;
for i=2:r-1
    for j=2:c-1
        s=[old_image(i-1,j-1),old_image(i-1,j),old_image(i-1,j+1),old_image(i,j-1),old_image(i,j)...
            ,old_image(i,j+1),old_image(i+1,j-1),old_image(i+1,j),old_image(i+1,j+1)];
        Imade_max=max(s);
        Imade_min=min(s);
        output(i,j)=(1/2)*(Imade_max + Imade_min);
        %s=[];
    end
end
output=uint8(output);
subplot(2,1,1)
imshow(old_image)
title('Old Image');
subplot(2,1,2)
imshow(output)
title('out put Mid');
end