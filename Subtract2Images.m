function new_image =Subtract2Images(image1,image2)
[r,c,ch] = size(image1);
resizeimage = imresize(image2, [r, c]);
new_image=zeros(r,c,ch);
for k=1:ch
    for i=1:r
        for j=1:c
           Pixel =abs( image1(i, j, k) - resizeimage(i, j, k));
            if(Pixel  > 255)
               Pixel  = 255;
            elseif(Pixel <0)
                Pixel  = 0;
            
            end
 
           new_image(i,j,k)=Pixel;
        end
    end
end
end
%%%COMAND WINDOW
%image1=imread("bts.jpg");
%image2=imread('shroukk1.jpg');
%new_image= uint8(Subtract2Images(image1,image2));
%figure,imshow(new_image),title(' Subtract Two Images'); 
