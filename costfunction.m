function [J,grad] = costFunction(X,y,theta)
    m=length(X);
    h = X*theta;
    J= (1/(2*m)) * sum((h-y).^2);
    grad = (1/m) .* X' * (h-y);
end
