function new_image =PowerLawWithoutNormolization(image,gamma)

image =im2double(image);
new_image=image.^(gamma);
if gamma<1
    figure,imshow(new_image),title('Brightness image Without Normalization');
elseif gamma>1
     figure,imshow(new_image),title('Darkness image Without Normalization');
end
end

%%%COMAND WINDOW
%image=imread('sea.jpg');
%new_image= uint8(PowerLawWithoutNormolization(image,0.1));>>>>>Brigthness
%new_image= uint8(PowerLawWithoutNormolization(image,2.2));>>>>>Darkness