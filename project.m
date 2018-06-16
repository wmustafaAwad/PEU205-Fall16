    x1 = 0;    x2 = 5;
    y1 = 0;    y2 = 0;
    z1 = 0;    z2= 0;
x3=0;
x3p= -1.75;
y3= 2.5;
y3p=0;
z3= 0;
z3p=0;
time=[0,300];
[t,pos]=ode45(@func, time , [x3, x3p, y3, y3p, z3, z3p]);
x=pos(:,1);
y=pos(:,3);
z= pos(:,5);
for i=1:length(x)
    plot3(x1,y1,z1,'go',x2,y2,z2,'yo',x(i),y(i),z(i),'r.')
    hold on
    pause(0.1)
end