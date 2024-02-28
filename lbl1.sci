//deff https://github.com/moueza/isbn-2-287-59731-X-introduction-a-Scilab p168
function [r,ir]=f(t,Y,Yprim)


    x=Y (1); y=Y (2);
    // theta=Y (3);
    z=Y (3);
    x2=Y (4); y2=Y (5);    z2=Y (6);
    x3=Y (7); y3=Y (8);    z3=Y (9);

    u=Y(10:18); //lambda=Y(7);

    xprim=Yprim(1); yprim=Yprim (2);
    //thetaprim=Yprim(3);
    zprim=Yprim(3);
    xprim2=Yprim(4); yprim2=Yprim (5);    zprim2=Yprim(6);
    xprim3=Yprim(7); yprim3=Yprim (8);    zprim3=Yprim(9);


    uprim=Yprim(10:18); 
    
   
    r(1)=xprim-u(1); 
    r(2)=yprim-u(2); 
    r(3)=zprim-u(3); 

    r(4)=xprim2-u(4); 
    r(5)=yprim2-u(5); 
    r(6)=zprim2-u(6); 

    r(7)=xprim3-u(7); 
    r(8)=yprim3-u(8); 
    r(9)=zprim3-u(9); 
    
    
     //https://en.wikipedia.org/wiki/Three-body_problem
     

// r1"=-G*m2*(r1-r2)/((r1-r2)^3)-G*m3*(r1-r3)/((r1-r3)^3)
 r(10)=...; 
 
    r(4)=(M4m) *uprim(1)+m*l*cos (theta) *uprim(3)    -m*l*sin(theta) *u(3)^2-2 *lambda*x+k*u(1); 
    

    r(5)= (M+m) *uprim(2) +m*l*sin(theta) *uprim(3)    +m*l*cos (theta) *u (3)^2+(M+m) *g+lambda+k*u(2); 

    r (6)=m*l*cos (theta) *uprim(l) +m*l*sin(theta) *uprim(2)+m*l^2*uprim(3) +m*g*sin(theta); 


    r(7)=-(-2*x*u(1) +u (2)); 
    ir=0


endfunction
