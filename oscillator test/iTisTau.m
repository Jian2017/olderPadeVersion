function Z = iTisTau( X,Y )
 
Z=Y;
N=max(size(X));
a=NpointsPade(X,Y);

 

for i=1:N
 
    Z(i)=continuedfraction(1i* X(i),X,a);

end

end