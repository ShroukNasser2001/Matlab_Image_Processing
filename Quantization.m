function newImage = Quantization(oldImage, k)
    [rows, cols, ch] = size(oldImage);
    newImage = zeros(rows, cols, ch);
    
    Gray_level = power(2, k);
    Gap = 256 / Gray_level;
    Colors = (Gap : Gap : 256);
    for i = 1 : ch
        for x = 1 : rows
            for y = 1 : cols            
                Temp = oldImage(x, y, i) / Gap;
                Index = floor(Temp) + 1;
                if(Index > 255)
                    Index = 255;
                elseif(Index < 1)
                    Index = 1;
                end
                newImage(x, y, i) = Colors(Index);
            end
        end
    end
    newImage = uint8(newImage);
    figure, imshow(oldImage), title('Original Image');
    figure, imshow(newImage), title('Quantizated Image');
end    