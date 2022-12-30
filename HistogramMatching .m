function new_image=HistogramMatching(image1,image2)
[r,c,ch] = size(image1);
[r2,c2,ch2] = size(image2);
new_image=zeros(r,c,ch);

sum2=0;
    for k=1:ch
    sum1=0;

    for color=0:255 
        min=100000;
           pixel=0;

            for i=1:r
                 for j=1:c
                    if (color==image1(i,j,k))
                         pixel=pixel+1;
                    end
                 end
            end
            sum1=sum1+pixel;  
            Equalization=round((sum1/(r*c))*255 );
         for color2=0:255 
           pixel2=0;
            for i=1:r2
                 for j=1:c2
                    if (color2==image2(i,j,k))
                         pixel2=pixel2+1;
                    end
                 end
            end
            sum2=sum2+pixel2;  
            Eqalizatin2=round((sum2/(r*c))*255 );
            if (abs(Equalization-Eqalizatin2)<min)
                min=abs(Equalization-Eqalizatin2);
                if (color>color2)
                    match=color;
                else
                    match=color2;
                end

            end

         end
      
            for i=1:r
                 for j=1:c
                    if (color==image1(i,j,k))
                         new_image(i,j,k)=match;
                    end
                 end
            end
    end
    end
end

%%%COMAND WINDOW
%image1=imread('sea.jpg'); 
%image2=imread('sea.jpg'); 
%new_image= uint8(HistogramMatching(image1,image2)); 
%figure,imshow(new_im),title('Histogram Matching Image'); 
