function epsi2 = epsilon_2
eps = 1;

while 1.0 + eps > 1.0 
    eps = eps /2;
end

disp(eps)

end