function [J] =costfunction(X,y,theta)
    m=length(X);
    h = X*theta;
    J= (1/(2*m)) * sum((h-y).^2);
end
