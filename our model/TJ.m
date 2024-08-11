function [classes,X_done]=TJ(X)
X_done=X(:,end);
X_done(X_done>0.8 & X_done<=1)=5;
X_done(X_done<=0.2)=1;
X_done(X_done>0.2 & X_done<=0.4)=2;
X_done(X_done>0.4 & X_done<=0.6)=3;
X_done(X_done>0.6 & X_done<=0.8)=4;
classes = unique(X_done);
for i=1:5
    classes(i,2)=sum(X_done==i);
end
end