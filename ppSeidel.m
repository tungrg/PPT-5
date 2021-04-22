function[Xn] = ppSeidel(A,C,delta)
[row,col] = size(A);
temp = diag(A);
for i=1:(row-1)
    temp = [temp diag(A)];
end
B = -A./temp +eye(row);
G = C./diag(A);
Xo = G;k= 1;
Xn = Xo;

while 1
    Xn(1) = B(1,:)*Xo+G(1),
    for i= 2:row
        Xn(i) = B(i,1:i-1)*Xn(1:i-1) + B(i,i:row)*Xo(i:row) + G(i),
    end
    rEX = norm((Xn - Xo)./Xo),
    FX = norm(A*Xn - C),
    if FX < delta
        break
    end
    Xo = Xn;
    k = k+1
end
end

