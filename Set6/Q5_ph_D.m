global w a f k
w=1; a=0.2; f=0.52; k=0.666;
%intval = linspace(1,2,10);%it's like for,it means(from interval -1 to 1 devide it with 10 variables(-1,-0.8,...0.8,1)
figure
hold on
%for i=1:10
    %for j=1:10
%[t,x]=ode45(@phase_diagram,[1,100],[intval(i),intval(j)]);%solve it for so many x,y
for i=1:0.01:1.01
    [t,x]=ode45(@phase_diagram,[1,6000],[i,0]);
    figure
    plot(x(:,1),x(:,2));
end
%end