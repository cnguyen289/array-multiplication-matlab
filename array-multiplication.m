function s = multn(a,b)

lengthalpha=length(a);

lengthbeta=length(b);

totallength=lengthalpha+lengthbeta;

% Determining length to make sure the new value fits
% ie. 000456

d = zeros(1,totallength+1);
    % zeros function returns an array of zeros with
    % its size defined from second value "totallength"
    % the plus one to ensure it fits

z = 1;

for i = lengthalpha:-1:1
    
    % range big value to small value must need a -1
    % "descending order"
    
    c = 0;
    % Setting "carried" value to zero

    g = 1;

for j = lengthbeta:-1:1

    arr = a(i)*b(j)+d(z+g)+c;

    c = floor(arr/10);
    
    % carried value

    d(z+g) = mod(arr,10);

 g = g+1;
 
end
  
if c > 0
    
    d(z+g)=d(z+g)+c;
    % carried value added
    
end
    z = z+1;
end

    s = fliplr(d(2:end));
    
    % Flipped value for display

end

