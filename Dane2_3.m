function [A,b] = Dane2_3(n)
%Dane 3 do zadania 3
%Tworzymy macierz wedlug wzoru podanego w zadaniu
%oraz kolumne b

A = zeros(n);
b=zeros(n,1);

for i=1:n %wiersze
    for j=1:n %kolumny
            A(i,j)=1/(4*(i+j+1));
    end
    if mod(i,2)==0 
        b(i)=7/(6*i);
    end
end

end