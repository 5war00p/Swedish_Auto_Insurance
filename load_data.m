function [X,y] = load_data()
    data = xlsread('Data.xlsx');
    
    X = data(:,1);
    y = data(:,2);
    
    %plot(X,y,'.r','MarkerSize',5);
end
