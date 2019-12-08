function[C,R,V]=Problem2(p1,p2,p3)
syms D E F
e1=p1(1)^2+p1(2)^2+D*p1(1)+E*p1(2)+F==0;
e2=p2(1)^2+p2(2)^2+D*p2(1)+E*p2(2)+F==0;
e3=p3(1)^2+p3(2)^2+D*p3(1)+E*p3(2)+F==0;
sol=solve([e1,e2,e3],[D,E,F]);
V=[sol.D sol.E sol.F];
h=-sol.D/2;
k=-sol.E/2;
C=[h k];
R=sqrt((sol.D/2)^2+(sol.E/2)^2-sol.F);
end