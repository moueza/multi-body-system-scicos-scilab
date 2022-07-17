//exec("pendule.sci")
exec('/home/peter/POUB/multi-body-system-scicos-scilab/pendule.sci', 1); 
//les données numériques
g=10; l=1; m=1; M=1; k=0.5; 
//Il les valeurs initiales 
x0=1; y0=1; theta0=0; u0=[0;0;0]; Y0=[x0;y0;theta0;u0;0]; 
uprim0= [ 0; -g;0]; Yprim0= [u0; uprim0;0]; 
// instants où l'on calcule t0=0; t=t0:0.05:20; 
// paramètres de dassl 
atol=[0.0001;0.0001;0.0001;0.0001;0.0001;0.0001;0.001];
rtol=atol; 
// appel de dassl 
Y=dassl([Y0, Yprim0],t0,t,rtol, atol, f);

//Undefined variable: M4m
//dassl: An error occurred in 'dassl' subroutine.

