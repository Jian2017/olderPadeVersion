function u1=continuedfraction(z1,Z,a)
set(0,'RecursionLimit',10000) ;
N=max(size(Z));


u1=f(1,z1);

    function out=f(i,x)
        
        if i==N
            out=a(N);
            return
        else
            out=a(i)/(1+(x-Z(i))*f(i+1,x));
            
            return
        end
        
        
        
    end




end