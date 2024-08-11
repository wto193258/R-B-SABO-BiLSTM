
tic
k=3;
kk=9;
load('part2-n20.mat');
X=sampp;
num_train_s=20;%用于训练\扩充的样本量

rng(14);%225
num_samples = size(X, 1); 
X = X(randperm(num_samples), :); 


net1=RandB_improvedBiLSTM(X,num_train_s,k,kk);


[result1,daset1]=compute(X,net1,num_train_s);

toc