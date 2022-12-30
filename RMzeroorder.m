function new_image = RMzeroorder(image,factr,factc)
[r,c,ch] = size(image);
new_r = r*factr;
new_c=c*factc;
new_image=zeros(new_r,new_c,ch);
ratioR=r/new_r;
ratioC=c/new_c;
for k=1:ch
    for i=1:new_r
        oldX=round(i*ratioR);
        if(oldX==0)
            oldX=1;
        end
        for j=1:new_c
            oldY=round(j*ratioC);
            if(oldY==0)
                oldY=1;
            end
            new_image(i,j,k)=image(oldX,oldY,k);
        end
    end
end
end
%image=imread("bts.jpg");
%new_image = uint8( RMzeroorder(image,4,3));
%figure,imshow(image),title('Old Image');
%figure,imshow(new_image),title('New Image');