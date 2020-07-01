function [train_x,train_y,test_x,test_y]=data_load
    data=load('first_project_data.txt');
    X=data(:,1);
    y=data(:,2);
    rng(1);
    k=randperm(63,63);
    train_x=X(k(:,1:48));
    train_y=y(k(:,1:48));
    test_x=X(k(:,49:end));
    test_y=y(k(:,49:end));
end
