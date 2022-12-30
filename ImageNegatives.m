function new_image =ImageNegatives(image)
[r,c,ch] = size(image);
new_image=zeros(r,c,ch);
for k=1:ch
    for i=1:r
        for j=1:c
           Pixel =255- image(i, j, k);
 
           new_image(i,j,k)=Pixel;
        end
    end
end
end
%%%COMAND WINDOW
%image=imread("bts.jpg"); 
%new_image= uint8(ImageNegatives(image)); 
%figure,imshow(new_image),title('Image Negative');
% image=imread('sea.jpg'); 