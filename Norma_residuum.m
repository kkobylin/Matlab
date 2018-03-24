function [r] = Norma_residuum(A,X,b)

r=A*X-b;

r=r.^2;
r=sqrt(sum(r));
end

