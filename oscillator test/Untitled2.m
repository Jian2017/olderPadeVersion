

N=100;
a=0.2;

X=a:a:a*N;
Y=X;
Yi=X;
for i=1:N
    Y(i)=testFun(X(i));
    Yi(i)=testFun(X(i)*(-1i));
end
%           Y=Y+fliplr(Y);  Yi=Yi+fliplr(Yi); 

Xf=1/(a*N): 1/(a*N):1/a;
Yf=fft(Y);
Yif=fft(Yi);


subplot(3,2,1);
plot(X,[real(Y);imag(Y)] ,'.-');
title('C(t)' ,'FontSize', 20);
 

subplot(3,2,2);
plot([Xf(N/2:end) Xf(1:N/2-1)]-Xf(N/2),[real(Yf);imag(Yf)] ,'p' );
title('C(\omega)' ,'FontSize', 20);

subplot(3,2,3);
plot(X,[real(Yi);imag(Yi)] ,'.-');
title('C(\tau)' ,'FontSize', 20);

subplot(3,2,4);
plot([Xf(N/2:end) Xf(1:N/2-1)]-Xf(N/2),[real(Yif);imag(Yif)] ,'p' );
title('C(\omega_n)' ,'FontSize', 20);


Z=iTisTau(X,Yif);
subplot(3,2,6);
plot([Xf(N/2:end) Xf(1:N/2-1)]-Xf(N/2),[ real(Z);imag(Z)]  ,'p  ' );
title('pade approx C(\omega)' ,'FontSize', 20);

Z=fft(Z);
subplot(3,2,5);
% Z=-(Z+fliplr(Z));
plot(X,[ real(Z);imag(Z)] ,'.-' );
title('C(t) from Fourier transform' ,'FontSize', 20);







