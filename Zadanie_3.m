function [X] = Zadanie_3(A,b,n)
%Zadanie 3 - Metoda Jacobiego

if det(A) == 0 
        warning('Macierz osobliwa. Nie da sie wykonac zadania');
        return;
end

L=zeros(n);
D=zeros(n);
U=zeros(n);
X=zeros(n,1);

%Dekompozycja macierzy A na macierze L D i U
for i=1:n %wiersze
    for j=1:n %kolumny
        if i>j
            L(i,j)=A(i,j);
        elseif i==j
            D(i,j)=A(i,j);
        else
            U(i,j)=A(i,j);
        end
            
    end
end
%Warunek dostateczny zbieznosci - Diagonalna dominacja macierzy A
W=1;
%Dominacja kolumnowa
for i=1:n %wiersze
    for j=1:n %kolumny
        Sk=0;
        if i~=j
            Sk=Sk+abs(A(i,j));
        end     
    end
    if (abs(A(i,i)))<Sk
        W=0;
    end
end

%Dominacja wierszowa
if W==0
    for j=1:n %kolumny
        Sw=0;
    for i=1:n %wiersze
        if i~=j
            Sw=Sw+abs(A(i,j));
        end     
    end
    if (abs(A(j,j)))>Sw
        W=1;
    end
end
end

%Ostateczne sprawdzenie warunku dostatecznego
if W==0
    warning('Warunek dostateczny niespelniony.');
    return;
end

%Warunek konieczny
if max(abs(eig(A)))>1
               % warning('Wartosci wlasne macierzy zbyt duze.Warunek konieczny niespelniony.');
               % return;
end

%Implementacja algorytmu
k=1;
for i=1:n
    N(i,i)=1/D(i,i);
end
M=-N*(L+U);


while k~=500
    %Xprev - Wyniki z poprzedniej iteracji
    Xprev=X;
    X=M*X+N*b;
    if Norma_1(X-Xprev,n) <= 1e-7
        if Norma_2(A*X-b,n) <= 1e-7
            break;
        end
    end
    
    k=k+1;
end

