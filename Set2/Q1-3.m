%Describtion
% we have a single file that contain M rows and N columns. First, we want to break it into multiple sub data sets with
% defined rows. then we calculated MEAN,VARIEANCE and STANDARD DEVIATION of each sub data sets and save the values in
% a table 
% output 
% t=table(Mean,deviation,variance,'RowNames',namelist); %write variables in table,respectively
% writetable(t,'final_ans.txt','WriteRowNames',true,'Delimiter','\t')%write it in a table form each column refer to specefic variable
% INPUT
% Data = load('filename') the raw data
% N_F : number of split ( number of files one wants to split the data)
% 
digits(16);
%Data=vpa(load('data_error.txt'),16);
Data=load('data_error.txt');
N_F=100; % number of files
for i=1:N_F;
    v=genvarname(['file' num2str(i)]); %genvarname constructs a variable name A with number squence of i
    m=(floor(size(Data,1)/N_F))*(i-1);
    n=(floor(size(Data,1)/N_F))*i;
    eval([v ' =Data(m+1:n,:)';]); %for deviding datas' from 1:328/329:328*2.....
    X=eval(['file' num2str(i)]); 
    writetable(table(X),['file' num2str(i) '.txt'],'Delimiter','\t'); 
end
%computing varieance  mean value and standard deviation for each data set
ans=zeros(N_F,3);
for i=1:N_F;
    X=eval(['file' num2str(i)]);
    sigma2=X(:,3).^2;
    variance=1/sum((1./sigma2));
    Mean=sum((X(:,2)./sigma2))*variance;
    standarddeviation=sqrt(variance);
    ans(i,1)=Mean;
    ans(i,2)=standarddeviation;
    ans(i,3)=variance;
end
for i=1:N_F;
    m=size(X,1)*(i-1);
    n=size(X,1)*i;
    namelist{i}=[num2str(m) '-' num2str(n)];  %write name list as(m:n)ex:1-328/329-....
end 
Mean=ans(:,1);
deviation=ans(:,2);
variance=ans(:,3);
t=table(Mean,deviation,variance,'RowNames',namelist); %write variables in table,respectively
writetable(t,'final_ans.txt','WriteRowNames',true,'Delimiter','\t')%write it in a table form each column refer to specefic variable
