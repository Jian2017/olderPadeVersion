

N=100;
a=0.2;

X=a:a:a*N;
Y=X;
Yi=X;
for i=1:N
    Y(i)=testFun(X(i));
    Yi(i)=testFun(X(i)*(-1i));
end
     Y=Y+fliplr(Y);  Yi=Yi+fliplr(Yi); 
  
Xf=1/(a*N): 1/(a*N):1/a;
Yf=fft(Y);
Yif=fft(Yi);

plot(X,[real(Yi);imag(Yi)]);
figure;

Z=iTisTau(X,Yi);
 plot(X,real(Z));

