//deff https://github.com/moueza/isbn-2-287-59731-X-introduction-a-Scilab p168
function [r,ir]=f(t,Y,Yprim)


    x=Y (1); y=Y (2); theta=Y (3); u=Y(4:6); lambda=Y(7);
    xprim=Yprim(1); yprim=Yprim (2); thetaprim=Yprim(3);
    uprim=Yprim(4:6); 
    
    r(1)=xprim-u(1); 
    r(2) =yprim-u(2); 
    r(3)=thetaprim-u(3); 
    r(4)=(M4m) *uprim(1)+m*l*cos (theta) *uprim(3)    -m*l*sin(theta) *u(3)^2-2 *lambda*x+k*u(1); 

    r(5)= (M+m) *uprim(2) +m*l*sin(theta) *uprim(3)    +m*l*cos (theta) *u (3)^2+(M+m) *g+lambda+k*u(2); 

    r (6)=m*l*cos (theta) *uprim(l) +m*l*sin(theta) *uprim(2)+m*l^2*uprim(3) +m*g*sin(theta); 


    r(7)=-(-2*x*u(1) +u (2)); 
    ir=0


endfunction
