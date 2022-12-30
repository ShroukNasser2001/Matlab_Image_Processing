function maskedImage = Median_Filter(oldImage)
    [old_rows, old_cols, dimension] = size(oldImage);
    maskedImage = padarray(oldImage,[1 1],'replicate', 'both');
    [new_rows, new_cols, Dimension] = size(maskedImage);
    newImage = zeros(old_rows, old_cols, dimension);
    for k = 1 : Dimension
        for x = 2 : new_rows-1
            for y = 2 : new_cols-1
                z = 1;
                array = zeros(9, 1);
                for i = x-1 : x+1
                    for j = y-1 : y+1
                        array(z) = maskedImage(i, j, k);
                        z = z+1;
                    end
                end
                array = sort(array);
                newImage(x-1, y-1, k) = array(5);
            end
        end
    end
    maskedImage = newImage;
    newImage = uint8(newImage);
    figure, imshow(oldImage), title('Original Image');
    figure, imshow(newImage), title('Median Filter Image');
end