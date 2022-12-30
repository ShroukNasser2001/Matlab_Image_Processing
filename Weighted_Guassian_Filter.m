function maskedImage = Weighted_Guassian_Filter(oldImage)
    [old_rows, old_cols, dimension] = size(oldImage);
    maskedImage = padarray(oldImage,[1 1],'replicate', 'both');
    [new_rows, new_cols, Dimension] = size(maskedImage);
    newImage = zeros(old_rows, old_cols, dimension);
    newImage = double(newImage);
    weightMask=[1,2,1,2,4,2,1,2,1];
    weightMask = double(weightMask);
    
    for k = 1 : Dimension
        for x = 2 : new_rows-1
            for y = 2 : new_cols-1
                z = 1;
                sum = 0;
                sum = double(sum);
                for i = x-1 : x+1
                    for j = y-1 : y+1
                       sum = sum + double(maskedImage(i, j, k) * weightMask(z));
                        z = z+1;
                    end
                end
                newImage(x-1, y-1, k) = sum / 16.0;
            end
        end
    end
    
    maskedImage = newImage;
    newImage = uint8(newImage);
    figure, imshow(oldImage), title('Original Image');
    figure, imshow(newImage), title('Weighted Guassian Filter Image');
end