data=load('first_project_data.txt');
X=data(:,1);
y=data(:,2);
plotData(X,y);
hold on;
theta=zeros(size(X,2)+1,1);
num_iterations=100000;
alpha=0.0001;
[theta,j_history]=gradient(X,y,theta,alpha,num_iterations);
X=[ones(length(y),1),X];
plot(X(:,2), X*theta, '-')







