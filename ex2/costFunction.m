function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

xtheta=X*theta;
expxtheta=X*theta;
oneexpxtheta=1+exp(-1*X*theta);
htheta=1./oneexpxtheta;
y0=(1.-y)'*log(1.-htheta);
y1=y'*log(htheta);
delta=y1+y0;
J=(-1/m)*delta;
save save.txt X y theta xtheta expxtheta oneexpxtheta htheta y0 y1 delta J;



grad = (1/m)*(X'*(htheta-y));


% =============================================================

end
