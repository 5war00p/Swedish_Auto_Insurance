[X,y,x1,y1]=data_load();
%plotData(X,y);
theta=zeros(size(X,2)+1,1);
num_iterations=100000;
alpha=0.0001;
%hold on;
[theta,j_history]=gradient(X,y,theta,alpha,num_iterations);
%plotData(1:num_iterations,j_history);
%X=[ones(length(y),1),X];
%plot(X(:,2), X*theta, '-')
%hold off;
plotData(x1,y1);
hold on;
x1=[ones(length(y1),1),x1];
plot(x1(:,2), x1*theta, '-')



