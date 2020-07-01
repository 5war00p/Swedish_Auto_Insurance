[X,y,x1,y1]=data_load();
plotData(X,y);
theta=zeros(size(X,2)+1,1);
num_iterations=1000;
alpha=0.001;
[theta,j_history]=gradient(X,y,theta,alpha,num_iterations);
plotData(1:num_iteration,j_history); %it has to decrease for every iteration


