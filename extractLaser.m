function [ point ] = extractLaser( filename )
a = imcrop(double(imread(filename)), [146 36 500 464]);

for i = 1:465
    for j = 1:501
        a1(i, j) = a(i, j, 1);
    end
end
b = bpass(a1, 1, 5);
point = pkfnd(b, 15, 5);

end

