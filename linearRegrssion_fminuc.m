data = load('first_project_data.txt');

X=data(:,1);

y=data(:,2);https://github.com/5war00p/Swedish_Auto_Insurance

plotData(X,y);

hold on;

theta=zeros(size(X,2)+1,1);

X=[ones(length(y),1),X];

%options = optimset('GradObj', 'on', 'MaxIter', 1000);
options = optimoptions(@fminunc,'Algorithm','Quasi-Newton','GradObj', 'on', 'MaxIter', 50);

[theta, cost] = fminunc(@(t)(costFunction(X, y,t)), theta, options);

plot(X(:,2), X*theta, '-b');
