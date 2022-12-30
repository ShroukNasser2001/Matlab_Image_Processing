function new_image = DMoneorder(image,fact)
[r,c,ch] = size(image);
new_r = r*fact;
new_c=c*fact;
new_image=zeros(new_r,new_c,ch);
for k=1:ch
    for i=1:r
        for j=1:c
           new_image((i-1)*fact+1,(j-1)*fact+1,k)=image(i,j,k);
        end
    end
end
%Rowssss
for k=1:ch
    for i=1:fact:new_r
        for j=1:fact:new_c
            new_j=j+fact;
            if new_j>new_c
                for new_i=1:fact-1
                    new_image(i,(j+new_i),k)=new_image(i,j,k);

                end
            else
                x=new_image(i,j,k);
                y=new_image(i,new_j,k);
                maxx=max(x,y);
                minn=min(x,y);
                if x<=y
                     for new_i=1:fact-1
                         Pixel=round(((maxx-minn)/fact)*new_i+minn);
                         new_image(i,(j+new_i),k)=Pixel;
                         
                     end
                else
                    rev_i=fact-1;
                    for new_i=1:fact-1
                         Pixel=round(((maxx-minn)/fact)*rev_i+minn);
                         new_image(i,(j+new_i),k)=Pixel;
                        rev_i=rev_i-1;
                    end

                end
               

            end
            
            
        end
    end
end

%Columnssssssssssssss
for k=1:ch
    for j=1:new_c
        for i=1:fact:new_r
            Change_i=i+fact;
            if Change_i>new_r
                for new_i=1:(fact-1)
                    new_image((i+new_i),j,k)=new_image(i,j,k);

                end
            else
                x=new_image(i,j,k);
                y=new_image(Change_i,j,k);
                maxx=max(x,y);
                minn=min(x,y);
                if x<=y
                     for new_i=1:(fact-1)
                         Pixel=round(((maxx-minn)/fact)*new_i+minn);
                         new_image((i+new_i),j,k)=Pixel;
                         
                     end
                else
                    rev_i=fact-1;
                    for new_i=1:(fact-1)
                         Pixel=round(((maxx-minn)/fact)*rev_i+minn);
                         new_image((i+new_i),j,k)=Pixel;
                         rev_i=rev_i-1;
                    end

                end
               

            end
            
            
        end
    end
end


    
%figure,imshow(image),title('Old Image');
%figure,imshow(new_image),title('New Image');
%new_image = uint8(DMzeroorder(image,3));
end
