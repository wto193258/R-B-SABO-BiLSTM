function finalo=kuochong(X_1,y_1,kk)
%kk是扩充倍数，需要输入


[x_n1,~]=size(X_1);

X_1_z=[X_1,ones(x_n1,1)];


[B1,~,~,~,~]=regress(y_1,X_1_z);%训练集导出模型


x=X_1;
% kk=99;
[n,~]=size(x);
X_12=cell(kk,2);
for i=1:kk
    u=unidrnd(2000,n,1);
    while find(mod(u,n)==0)
        u=unidrnd(2000,n,1);
    end
    X_dex=mod(u,n);
    X_12{i,1}=x(X_dex,1);
    X_12{i,2}=x(X_dex,2);
end
X_12new=cell2mat(X_12);

X_3=cell(kk,1);
for i=1:kk
    u=unidrnd(2000,n,1);
    while find(mod(u,n)==0)
        u=unidrnd(2000,n,1);
    end
    X_dex=mod(u,n);
    X_3{i,1}=x(X_dex,3);
end
X_3new=cell2mat(X_3);

X_4=cell(kk,1);
for i=1:kk
    u=unidrnd(2000,n,1);
    while find(mod(u,n)==0)
        u=unidrnd(2000,n,1);
    end
    X_dex=mod(u,n);
    X_4{i,1}=x(X_dex,4);
end
X_4new=cell2mat(X_4);

X_5=cell(kk,1);
for i=1:kk
    u=unidrnd(2000,n,1);
    while find(mod(u,n)==0)
        u=unidrnd(2000,n,1);
    end
    X_dex=mod(u,n);
    X_5{i,1}=x(X_dex,5);
end
X_5new=cell2mat(X_5);
X_new=[X_12new,X_3new,X_4new,X_5new];
y_new=[X_new,ones(length(X_new),1)]*B1;

X1X=[X_1;X_new];
y1y=[y_1;y_new];

finalo=[X1X,y1y];

end


% %评估模型
% model=fitrsvm(X1X,y1y);
% y_22_pre=predict(model,X_11);
% 
% 
% 
% t_eror=mean((y_11-y_22_pre).^2);
% xy_eror=mean(abs(y_11-y_22_pre)./y_11);

% [c,s,l,t,e]=pca(X);
% X_c=finalo-mean(X,1);
% sc=X_c*c;
% % figure(1);
% subplot(1,2,1)
% scatter3(s(1:nz,1),s(1:nz,2),s(1:nz,3),62,'filled');
% % hold on
% % figure(2);
% subplot(1,2,2)
% hold off
% scatter3(s(1:nz,1),s(1:nz,2),s(1:nz,3),62,'filled');hold on
% scatter3(sc(nz+1:end,1),sc(nz+1:end,2),sc(nz+1:end,3),62,'filled')