clear all
close all
clc

%% Defining the mesh
n_points = 5;
dom_size = 1;
h = dom_size/(n_points - 1);

%% Initialising the problem
y(1) = 0;
y(n_points) = 1;

y_new(1) = 0;
y_new(n_points) = 1;

error_mag = 1;
error_req = 1e-7;
iterations = 0;

%% Calculations
while error_mag > error_req
    for i = 2:(n_points-1)
        y_new(i) = 0.5.*(y(i-1) + y(i+1));
        iterations = iterations + 1;
    end
    % Calculation of error magnitude
    error_mag = 0;
    for i = 2:(n_points-1)
        error_mag = error_mag + abs(y(i) - y_new(i));
    end
    % Assigning new to be old
    y = y_new;
end

%% Plotting
x_dom = ((1:n_points)-1).*h;
figure; plot(x_dom, y)