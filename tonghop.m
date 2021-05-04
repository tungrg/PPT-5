%Bai 4, Viet function cho bai toan giai he 5 phuong trinh 5 an
  %a) phuong phap lap
  function[Xn] = pplap(A,C,delta)
  [row,col] = size(A);
  temp = diag(A);
  for i=1:(row-1)
      temp = [temp diag(A)];
  end
  B = -A./temp +eye(row);
  G = C./diag(A);
  Xo = G;k= 1;
  while 1
      Xn = B*Xo + G;
      rEx = norm((Xn-Xo)./Xo),
      fX = norm(A*Xn - C),
      if fX < delta
          break
      end
      Xo = Xn;
      k = k+1
  end
  end
  %b) phuong phap seidel
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
    %c) loi goi ham
     %phuong phap lap: [a] = pplap([6 1 1 1 1; 2 9 3 1 2; 2 1 10 4 2; 1 2 1 8 3; 2 1 2 3 9],[9 1 -12 -12 5],10^(-3))
     %phuong phap seidel: [a] = ppSeidel([6 1 1 1 1; 2 9 3 1 2; 2 1 10 4 2; 1 2 1 8 3; 2 1 2 3 9],[9 1 -12 -12 5],10^(-3))

%Bai 5, giai he n phuong trinh n an
 %a) phuong lap lap
  function[Xn] = pplap(A,C,delta)
  [row,col] = size(A);
  temp = diag(A);
  for i=1:(row-1)
      temp = [temp diag(A)];
  end
  B = -A./temp +eye(row);
  G = C./diag(A);
  Xo = G;k= 1;
  while 1
      Xn = B*Xo + G;
      rEx = norm((Xn-Xo)./Xo),
      fX = norm(A*Xn - C),
      if fX < delta
          break
      end
      Xo = Xn;
      k = k+1
  end
  end
  % vi du goi ham :[a] = pplap([5 1 1; 1 10 1; 1 1 20], [7,12,22], 10^(-3))
  %b) phuong phap seidel
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
    % vi du goi ham: [a] = pplap([5 1 1; 1 10 1; 1 1 20], [7,12,22], 10^(-3))
