function new_image =Contrast(image,newmin,newmax)
[r,c,ch] = size(image);
new_image=zeros(r,c,ch);
minn=0;
maxx=255;
for k=1:ch
    for i=1:r
        for j=1:c
            minn=min(minn,image(i,j,k));
            maxx=max(maxx,image(i,j,k));
        end
    end
end

for k=1:ch
    for i=1:r
        for j=1:c
            Pixel = double(double(image(i,j,k) - minn) / double(maxx-minn)) * double(newmax - newmin) + double(newmin) ;

            if(Pixel > 255)
                Pixel = 255;
            elseif(Pixel <0)
                Pixel = 0;
            end
            new_image(i,j,k)=Pixel;

        end
    end
end
end


%%%%%COMMAND WINDOW
%image=imread("bts.jpg");
%new_image= uint8(Contrast(image,100,80));
%figure,imshow(new_image),title('Contrast New Image');