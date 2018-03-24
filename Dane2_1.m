function [A,b] = Dane2_1(n)
%Dane 1 do zadania 2
%Tworzymy macierz wedlug wzoru podanego w zadaniu
%oraz kolumne b

A = zeros(n);
b=ones(n,1);

for i=1:n %wiersze
    for j=1:n %kolumny
        if i==j-1 || i==j+1 
            A(i,j)=3;
        end
    end
    A(i,i)=7;
    b(i)=2.5+0.5*i;
end

end