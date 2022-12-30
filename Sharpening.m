function new_image=Sharpening(image)    
[r,c,ch] = size(image);
new_image=zeros(r,c,ch);
image=double(image);
new_image=double(new_image);

for k=1:ch
    for i=2:r-1
        for j=2:c-1
            new_image(i,j,k)=5 *image(i,j,k)-image(i+1,j,k)+image(i-1,j,k)+image(i,j+1,k)+image(i,j-1,k);
        end
    end
end


new_image=uint8(new_image);
end

%%%%%COMMAND WINDOW
%image=imread("sea.jpg");
%new_image= uint8(Sharpening(image)); 
%figure,imshow(new_image),title('Sharpening');