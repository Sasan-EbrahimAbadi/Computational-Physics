% calculating the correlation coefficient of multiple data sets and
% in the end extracting a matrix that each index give us the value of
% correlation coefficient between two data sets.
% input
% N = number of files
% for this part, just load one file as a sample
% Data = load('filename') ; ex. Data=load('file1.txt'); 
% X=load(['filename' num2str(i) '.format'])
% Y=load(['filename' num2str(j) '.format'])
% remember that data files should have the same name with the sequantial
% numbers
% ex. [file1.txt , file2.txt , file3.txt , ....]
%     [data1.txt , data2.txt , data3.txt , ...]
% the data file should contain one column , ex. X = size(N,1)
tic
N=5; %number of files
C=zeros(N,N);
%List=dir('*.txt');
Data=load('file1.txt');
l=length(Data);

for i=1:N
    for j=1:i 
        for k=1:l
                X=load(['file' num2str(i) '.txt']);
                Y=load(['file' num2str(j) '.txt']);
                %
                X=X(:,2); Y=Y(:,2);
                MeanX=mean(X); STDX=std(X);
                MeanY=mean(Y); STDY=std(Y);
                
                C(i,j)=C(i,j)+((X(k)-MeanX)/STDX)*((Y(k)-MeanY)/STDY);
        end
        C(i,j)=C(i,j)/l; %normilization
    end
end
figure
imagesc(C)
 toc        
% save('C.mat');     