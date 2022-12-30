function new_image =DrawingHistogram(image)
[r,c,ch] = size(image);
new_image=zeros(r,c,ch);
histogram = zeros(1,256);

for k=1:256
    c=0;
    for i=1:r
        for j=1:c
            if (image(i,j,k) == k-1);
                c = c + 1;
            end

        end
    end
        histogram(1,k) = c;
end
end
%%%COMAND WINDOW
%image=imread("bts.jpg");
%image=imread('sea.jpg'); 
%new_image= uint8(DrawingHistogram(image)); 
%bar(histogram);
%title('HISTOGRAM'); 
%title('HISTOGRAM2');