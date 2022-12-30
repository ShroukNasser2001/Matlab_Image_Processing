function new_image = RMoneorder(image,factr,factc)
[r,c,ch] = size(image);
new_r = r*factr;
new_c=c*factc;
new_image=zeros(new_r,new_c,ch);
ratioR=r/new_r;
ratioC=c/new_c;
for k=1:ch
    for i=1:new_r
        oldX=(i*ratioR);
        x1=floor(oldX);
        if(x1==0)
            x1=1;
        end
        x2=x1+1;
        if(x2>r)
            x2=r;
        end
        for j=1:new_c
            oldY=(j*ratioC);
            y1=floor(oldY);
            if(y1==0)
                y1=1;
            end
            y2=y1+1;
            if y2>c;
                y2=c;
            end
            P1 = image(x1,y1,k);
            P2 = image(x2,y1,k);
            P3 = image(x1,y2,k);
            P4 = image(x2,y2,k);
            xf=oldX-x1;
            yf=oldY-y1;
            z1=P1*(1-xf)+P2*(xf);
            z2=P3*(1-xf)+P4*(xf);
            NewPixel = z1 * (1 - yf) + z2 * yf;
             new_image(i,j,k)=round(NewPixel);
        end
    end
end
end
%image=imread("bts.jpg");
%new_image = uint8( RMoneorder(image,4,3));
%figure,imshow(image),title('Old Image');
%figure,imshow(new_image),title('New Image');