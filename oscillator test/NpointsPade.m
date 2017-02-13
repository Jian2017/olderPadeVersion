function aa=NpointsPade(Z,U)
set(0,'RecursionLimit',10000) ;
aa=zeros(size(Z));

aa(1)=U(1);


function output=g(i,k)
    if k==1
        output=(aa(1)/U(i)-1)/(Z(i)-Z(1));
        return
    else
        output=(aa(k)/g(i,k-1)-1)/(Z(i)-Z(k));
        return
    end
end


for t=2:max(size(Z))
    aa(t)=g(t,t-1);
end

end
