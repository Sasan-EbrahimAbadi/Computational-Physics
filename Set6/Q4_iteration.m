clear
r=2.4;
x1=rand;
for i=1:100      
    x2=r*x1*(1-x1);    
    x1=x2;
    X(i)=x2;
    
end
s=1:100;
plot(s,X)