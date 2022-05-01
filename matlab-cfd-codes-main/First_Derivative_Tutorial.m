clear all
close all
clc

%% Defining the function
poly_p = [3 5 7];

%% Derivativing the function - theoretically
p_der = polyder(poly_p);
p_der_eval = polyval(p_der, 0)

%% Finite difference method - Forward
x_0 = 0;
h = 0.2;
der_for_diff_first = (polyval(poly_p, x_0 + h) - polyval(poly_p, x_0))/h

%% Finite difference method - Backward
x_0 = 0;
h = 0.2;
der_back_diff_first = (polyval(poly_p, x_0) - polyval(poly_p, x_0 - h))/h

%% Finite difference method - Central
x_0 = 0;
h = 0.2;
der_central_diff_first = (polyval(poly_p, x_0 + h) - polyval(poly_p, x_0 - h))/(2*h)