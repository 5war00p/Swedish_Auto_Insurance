function [X_train,X_test,y_train,y_test] = splitData(X,y)
    rng(1);
    i = randperm(63,63);
    X_train = X(i(:,1:48));
    X_test = X(i(:,49:end));
    
    y_train = y(i(:,1:48));
    y_test = y(i(:,49:end));

end
