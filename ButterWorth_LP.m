function new_image=ButterWorth_LP(image,DO,n)
[r,c,ch] = size(image);
new_image=zeros(r,c,ch);
FT = fft2(image);
FTS = fftshift(FT);
Real = real(FTS);
Imag = imag(FTS);

for k=1:ch
    for i=1:r
        for j=1:c
           D=((i-r/2)^2 + (j-c/2)^2)^0.5 ; 
           new_image(i, j, k)=1 / (1 +(D/ DO)^(2*n));

        end
    end
end

Real = Real .* new_image;
Imag = Imag .* new_image;
FT = ifftshift(Real + 1i * Imag);
IFT = ifft2(FT);
new_image=uint8(IFT);
end
%%%COMAND WINDOW
%image=imread("sea.jpg"); 
%new_image= uint8(  ButterWorth_LP(image,100,2)); 
%new_image= uint8(ButterWorth_LP(image,32,2));
%figure,imshow(new_image),title('Ideal Filter(ButterWorth(LowPass)');