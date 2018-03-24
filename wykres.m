function wykres(np,dane)
%Rysujemy wykres zalezosci bledu r (norma residuum) od liczby rownan n
%np - liczba punktow na osi x
%dane - Wybor 1,2,3 w zaleznosci ktorych danych chcemy uzyc

n=10;
i=1;

if dane==1
    while i<=np
        try
    [A,b]=Dane2_1(n);
    [U,c]=Zadanie_2(A,b,n);
    X=Oblicz_X(U,c,n);
    r=Norma_residuum(A,X,b);
    OsX(i)=n;
    OsY(i)=r;
        catch
            return
        end
    
    n=n*2;
    
    i=i+1;
    end
    
elseif dane==2
    while i<=np
        try
    [A,b]=Dane2_2(n);
    [U,c]=Zadanie_2(A,b,n);
    X=Oblicz_X(U,c,n);
    r=Norma_residuum(A,X,b);
    OsX(i)=n;
    OsY(i)=r;
        catch
            return
        end
            
    
    n=n*2;
    
    i=i+1;
    end
    
elseif dane==3
    while i<=np
        try
    [A,b]=Dane2_3(n);
    [U,c]=Zadanie_2(A,b,n);
    X=Oblicz_X(U,c,n);
    r=Norma_residuum(A,X,b);
    OsX(i)=n;
    OsY(i)=r;
        catch
            return
        end
    
    n=n*2;
    
    i=i+1;
    end
    
else warning('Bledne numer danych.');
    return;
    
end
try
plot(OsX,OsY,'b-');
catch
    return
end

hold on;
plot(OsX, OsY, 'r*');
title('Wykres zaleznosci bledu od liczby rownan');
xlabel('Liczba rownan');
ylabel('Blad rozwiazania');

end

