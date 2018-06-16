n= input('Please enter the number of bodies: ');
% G=6.67428*10^-11;
Ax=zeros(n);
Ay=zeros(n);
Az=zeros(n);
for i=1:n
    m(i)=input('Please enter the masses in solar masses: ');
end
for i=1:n
    x(i)=input('Please enter the x coordinate in AU: ');
    y(i)=input('Please enter the y coordinate in AU: ');
%     z(i)=input('Please enter the z coordinate: ');
end
for i=1:n
    Vx(i)=input('Please enter the x velocity: ');
    Vy(i)=input('Please enter the y velocity: ');
%     Vz(i)=input('Please enter the z velocity');
end
plot(x,y,'r*')
hold on
%%
% t=10;
v=0.000000005;
for t=0:v:10000000*v
    for i=1:n
        for j=1:n
            if i==j
                continue
            end
            Ax(i,j)=m(j)*(x(j)-x(i))/((x(i)-x(j))^2+(y(i)-y(j))^2)^1.5;
        end
    end
    for i=1:n
        for j=1:n
            if i==j
                continue
            end
            Ay(i,j)=m(j)*(y(j)-y(i))/((x(i)-x(j))^2+(y(i)-y(j))^2)^1.5;
        end
    end
%     for i=1:n
%         for j=1:n
%             if i==j
%                 continue
%             end
%             Az(i,j)=G*m(j)*(z(j)-z(i))/((x(i)-x(j))^2+(y(i)-y(j))^2)^1.5;
%         end
%     end

    s=sum(Ax');
    for i=1:n
        ATx(i)=s(i);
    end
    s=sum(Ay');
    for i=1:n
        ATy(i)=s(i);
    end
%     s=sum(Az');
%     for i=1:n
%         ATz(i)=s(i);
%     end

    for i=1:n
        x(i)= x(i)+ Vx(i)*t+1/2 * ATx(i) * t^2;
        Vx(i)= Vx(i)+ATx(i)*t;
    end
    for i=1:n
        y(i)= y(i) + Vy(i)*t+1/2 * ATy(i) * t^2;
        Vy(i)= Vy(i)+ATy(i)*t;
    end
    X1=x(1);Y1=y(1);X2=x(2);Y2=y(2);
    X3=x(3);Y3=y(3);
%     X4=x(4);Y4=y(4);
%     X5=x(5);Y5=y(5);X6=x(6);Y6=y(6);
%     X7=x(7);Y7=y(7);X8=x(8);Y8=y(8);
% ,X4,Y4,'bo',X5,Y5,'mo',X6,Y6,'ko',X7,Y7,'yo',X8,Y8,'co'
    plot(X1,Y1,'mo',X2,Y2,'ro',X3,Y3,'go')
    hold on
    pause(0.00005)
%     for i=1:n
%         z(i)= Vz(i)*t+1/2 * ATz(i) * t^2;
%         Vz(i)= Vz(i)+ATz(i)*t;
%     end
end