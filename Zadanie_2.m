function [U,b,n] = Zadanie_2(A,b,n)
%Rozwiazanie ukladu rownan metoda Eliminacji Gaussa z czesciowym
%wyborem elementu podstawowego

if det(A) == 0 
       warning('Macierz osobliwa. Nie da si� wykona� zadania');
       return;
end

L=eye(n);
U=A;

for k=1:n-1 %kolumny
    P=eye(n);
         %odnalezienie max
        max = abs(U(k,k));
        ind=k;
        j = k; %kolumna
        for i = j:n %wiersz
            if abs(U(i,j)) > max
                max = abs(U(i,j));
                ind = i;
            end
        end
        %end odnalezienie max
        if (ind ~= k)
            P(ind,k)=1;
            P(k,ind)=1;
            P(k,k)=0;
            P(ind,ind)=0;
        end
        %Zamiana wierszy
        U=P*U;
        b=P*b;
        L=P*L*P;
        
        %Wypelnienie macierzy L 
        for i=k+1:n
            L(i,k)=U(i,k)/U(k,k);
            U(i,:) = U(i,:) - L(i,k) * U(k,:);
            b(i) = b(i) - L(i,k) * b(k);
        end
end
       
   



end

