% MCMC methood
clear
tic
m=100000; %montecarlo step%
A=9; %Initial value
H=3; %Initial value
d=load('fitinput.txt');
x=d(:,1);
y=d(:,2);
y_th=A.*(x.^H); %initial y_theory%
Pold=sum((y_th-y).^2);

for i=1:m
    a=A+rand*2-1;
    h=H+rand*2-1;
    y_th=a.*(x.^h); %Y from theory%
    Pnew=sum((y_th-y).^2); 
    L=Pnew/Pold  ;   
    if L < 1
        Pold=Pnew;
        A=a;
        H=h;
    end 
    
end
y_th=A.*(x.^H);
figure;plot(x,y_th,'m',x,y,'k');xlabel('x');ylabel('y');

title('fitted curve by MCMC method');
text(1000,270,['A = ' num2str(A) ' & H = ' num2str(H)])


toc