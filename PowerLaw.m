function new1_image =PowerLaw(image,gamma)
[r,c,ch] = size(image);
new1_image=zeros(r,c,ch);
for k=1:ch
    for i=1:r
        for j=1:c
        end
    end
end
new1_image(i,j,k)=power(image(i,j,k), gamma) ;


end

%new1_image= uint8(PowerLaw(image,0.2)); 
%new_image= uint8(Contrast(new1_image,0,255));
%figure,imshow(new_image),title('PowerLaw New Image');
