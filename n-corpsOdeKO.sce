//https://github.com/moueza/isbn-9-782729-879488-la-physique-avec-MAPLE p17
Gms=1
Gmt=.5
Xs=0
Ys=0
Xt=1
Yt=0

//start Maple
//x0=2;y0=0;vx0=0;vy0=.25

//ds=sqrt((x-Xs)^2+(y-Ys)^2)
//ds=sqrt((y(1)-Xs)^2+(y(3)-Ys)^2)
//deff https://github.com/moueza/isbn-2-287-59731-X-introduction-a-Scilab p166
deff("yyy=ds","yyy=sqrt((y(1)-Xs)^2+(y(3)-Ys)^2)")

//dt=sqrt((x-Xt)^2+(y-Yt)^2)
//dt=sqrt((y(1)-Xt)^2+(y(3)-Yt)^2)
//
deff("yyy=dt","yyy=sqrt((y(1)-Xt)^2+(y(3)-Yt)^2)")

//xple var https://github.com/moueza/isbn-2-287-59731-X-introduction-a-Scilab p157
function yprim=f(t,y)
    //+ https://x-engineer.org/second-order-ode-scilab/
    //[y,y']
    //+++++++ [u(t)),u'(t),v(t),v'(t)]->'=[u',v']

    yprim(1)=y(2);
    //yprim(2)=Gms*(Xs-x)/ds^3+Gmt*(Xt-x)/dt^3;
    yprim(2)=Gms*(Xs-y(1))/ds^3+Gmt*(Xt-y(1))/dt^3;
    yprim(3)=y(4);
    yprim(4)=Gms*(Ys-y(3))/ds^3+Gmt*(Yt-y(3))/dt^3
endfunction

//start Scilab
t = 0:0.01:5*%pi;
t0 = min(t);
y0 = [2;0;0; .25];
//f(x,yyy)
Y = ode(y0, t0, t, f);
plot2d(Y(1,:),Y(3,:),frameflaf=0)
