function new_image = Brightness(image,offset)
[r,c,ch] = size(image);
%new_image=image;
new_image=zeros(r,c,ch);
for k=1:ch
    for i=1:r
        for j=1:c
            Pixel = image(i,j,k) + offset;
            if(Pixel > 255)
                Pixel = 255;
            elseif(Pixel<0)
                Pixel = 0;
            end
            new_image(i,j,k)=Pixel;

        end
    end
end
end
%%%%%COMMAND WINDOW
%image=imread("bts.jpg");
%new_image= uint8(Brightness(image,100));
%figure,imshow(new_image),title('Brightness New Image');
