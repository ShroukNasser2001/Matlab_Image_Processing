function new_image=Unsharpe(S_image,B_image)    
[r,c,ch] = size(B_image);
new_image=zeros(r,c,ch);


for k=1:ch
    for i=1:r
        for j=1:c
            gimage(i,j,k)= S_image(i,j,k) - B_image(i,j,k);
            new_image(i,j,k)=S_image(i,j,k)+ gimage(i,j,k);
        end
    end
end


new_image=uint8(new_image);
end

%%%%%COMMAND WINDOW
%S_image=imread("sea.jpg");
%B_image=imread("sea1.jpg");
%new_image= uint8(Unsharpe(S_image,B_image)); 
%figure,imshow(new_image),title('Unsharpe');