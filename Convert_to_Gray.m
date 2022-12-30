function new_image =Convert_to_Gray(image)

%(1)Luminance
r = image(:,:,1);
g = image(:,:,2);
b = image(:,:,3);
%new_image=0.3*r+0.59*g+0.11*b;


%(2)Single color channel
%new_image=b;

%(3)Averaging
%new_image=(r+g+b)/3;



%(4)Desaturation
new_image = ( max(r,max(g,b)) + min(r,min(g,b)) )/2;


%(5)Decomposing
%new_image=max(r,max(g,b));
%new_image=min(r,min(g,b));

end
 
%image=imread("bts.jpg");
%new_image= uint8(Convert_to_Gray(image));
%figure,imshow(new_image),title('New Image (GRAY)');
 %figure,imshow(new_image),title('New Image (GRAY by averaging)');
%figure,imshow(new_image),title('New Image (GRAY by luminace)'); 
%figure,imshow(new_image),title('New Image (GRAY by spliting channels)'); 
%figure,imshow(new_image),title('New Image (GRAY by decomposing(max)'); 
%figure,imshow(new_image),title('New Image (GRAY by decomposing(min)'); 
%figure,imshow(new_image),title('New Image (GRAY by desaturation)');