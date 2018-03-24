function [A,b] = Dane2_2(n)
%Dane 2 do zadania 2
%Tworzymy macierz wedlug wzoru podanego w zadaniu
%oraz kolumne b

A = zeros(n);
b=ones(n,1);

for i=1:n %wiersze
    for j=1:n %kolumny
        if i==j
            A(i,j)=1/6;
        else 
            A(i,j)=2*(i-j)+2;
        end
    end
    b(i)=2+0.4*i;
end

end