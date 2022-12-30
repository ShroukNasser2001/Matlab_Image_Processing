function new_image= HistogramEqualization(image)
[r,c,ch] = size(image);
new_image=zeros(r,c,ch);
for k=1:ch
sum=0;
   for color=0:255 
       pixel=0;

        for i=1:r
             for j=1:c
                if color==image(i,j,k)
                     pixel=pixel+1;
                end
             end
        end
        sum=sum+pixel;
        for i=1:r
             for j=1:c

                if color==image(i,j,k)
                    new_image(i,j,k)=round((sum/(r*c))* 255 );
                end
             end
        end
        
    
   end   
end
end
%%%COMAND WINDOW
%image=imread('sea.jpg');
%image=imread("bts.jpg");
%new_image= uint8(HistogramEqualization(image)); 
%figure,imshow(new_image),title('Histogram Equalization Image'); 
