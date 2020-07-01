function [J] =costfunction(X,y,theta)
    m=length(X);
    J=sum(((X*theta)-y).^2)/(2*m)
end
