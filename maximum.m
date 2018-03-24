function [ind,max] = maximum(A,k,n)
%Szukanie najwiekszego elementu w danej kolumnie macierzy A

%k-wiersz w ktorym aktualnie znajdujemy sie podczas metody eliminacji Gaussa
%w-wiersz w ktorym aktualnie znajdujemy sie podczas metody eliminacji Gaussa
ind=1;
w=k;
max=abs(A(w,k));
for i=w:n
    if abs(A(i,k))>max
        max=abs(A(i,k));
        ind=i;
    end
end
    
%disp(max)
%disp(ind)


end

