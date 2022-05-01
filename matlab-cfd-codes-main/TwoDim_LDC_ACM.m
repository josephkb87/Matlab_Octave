clear all
close all
clc

%% Defining the problem domain
n_points = 51; % no_of_points
dom_length = 1;
h = dom_length/(n_points-1);
x = 0:h:dom_length; %X domain span
y = 0:h:dom_length; %Y domain span
dt = 0.001; %Time advancement
Re = 100; %Reynolds number
delta = 4.5; %Artificial compressibility

%% Initializing the variables
%Final collocated variables
u_final(n_points,n_points)=0;
v_final(n_points,n_points)=0;
p_final(n_points,n_points)=1;
u_final(1,:) = 1;

%Staggered variables
u(n_points+1,n_points)=0;
v(n_points,n_points+1)=0;
p(n_points+1,n_points+1)=1;
u(1,:)=2;

u_new(n_points+1,n_points)=0;
v_new(n_points,n_points+1)=0;
p_new(n_points+1,n_points+1)=1;
u_new(1,:)=2;

%% Solving the governing equations
error = 1;
iterations = 0;
error_req = 1e-6; %final required error residual
figure(1); %for error monitoring

while error > error_req
    % x-momentum eq. - Interior
    for i = 2:n_points
        for j = 2:n_points - 1
            pressure = -(p(i,j+1) - p(i,j))/h;
            diffusion = (1/Re)*((u(i+1,j) - 2*u(i,j) + u(i-1,j))/(h*h) + (u(i,j+1) - 2*u(i,j) + u(i,j-1))/(h*h));
            advection_x = ((0.5*(u(i,j)+u(i,j+1)))^2 - (0.5*(u(i,j)+u(i,j-1)))^2)/h;
            advection_y = ((0.25*(u(i,j)+u(i-1,j))*(v(i-1,j)+v(i-1,j+1))) - (0.25*(u(i,j)+u(i+1,j))*(v(i,j)+v(i,j+1))))/h;
            u_new(i,j) = u(i,j) + dt*(diffusion - advection_x - advection_y + pressure);
        end
    end
    
    % x-momentum eq. - Boundary
    u_new(1,:) = 2 - u_new(2,:);
    u_new(n_points + 1,:) = -u_new(n_points,:);
    u_new(2:n_points,1) = 0;
    u_new(2:n_points,n_points) = 0;    
    
    % y-momentum eq. - Interior
    for i = 2:n_points - 1
        for j = 2:n_points
            pressure = -(p(i,j) - p(i+1,j))/h;
            diffusion = (1/Re)*((v(i+1,j) - 2*v(i,j) + v(i-1,j))/(h*h) + (v(i,j+1) - 2*v(i,j) + v(i,j-1))/(h*h));
            advection_y = ((0.5*(v(i,j)+v(i-1,j)))^2 - (0.5*(v(i,j)+v(i+1,j)))^2)/h;
            advection_x = ((0.25*(u(i,j)+u(i+1,j))*(v(i,j)+v(i,j+1))) - (0.25*(u(i,j-1)+u(i+1,j-1))*(v(i,j)+v(i,j-1))))/h;
            v_new(i,j) = v(i,j) + dt*(diffusion - advection_x - advection_y + pressure);
        end
    end
    
    % y-momentum eq. - Boundary
    v_new(:,1) = -v_new(:,2);
    v_new(:,n_points + 1) = -v_new(:,n_points);
    v_new(1,2:n_points) = 0;
    v_new(n_points,2:n_points) = 0;
    
    % Continuity eq. - Interior
    for i = 2:n_points
        for j = 2:n_points
            p_new(i,j) = p(i,j) - delta*dt*(u(i,j) - u(i,j-1) + v(i-1,j) - v(i,j))/h;
        end
    end
    
    % Continuity eq. - Boundary
    p_new(1,:) = p_new(2,:);
    p_new(n_points + 1,:) = p_new(n_points,:);
    p_new(:,1) = p_new(:,2);
    p_new(:,n_points + 1) = p_new(:,n_points);
    
    % Continuity residual as error measure
    error = 0;
    for i = 2:n_points - 1
        for j = 2:n_points - 1
            error = error + abs((u_new(i,j) - u_new(i,j-1) + v_new(i-1,j) - v_new(i,j))/h);
        end
    end
    
    % Error monitoring after every few timesteps
    if(rem(iterations, 5000)) == 0
       figure(1);
       semilogy(iterations, error, '-ko')
       hold on
       xlabel('Iterations')
       ylabel('Residual Error')
    end
    
    % Finishing the iteration
    u = u_new;
    v = v_new;
    p = p_new;
    iterations = iterations + 1;
end

% After the converged solution, we map the staggered variables to
% collocated variables
for i = 1:n_points
    for j = 1:n_points
        u_final(i,j) = 0.5*(u(i,j) + u(i+1,j));
        v_final(i,j) = 0.5*(v(i,j) + v(i,j+1));
        p_final(i,j) = 0.25*(p(i,j) + p(i,j+1) + p(i+1,j) + p(i+1,j+1));
    end
end

%% Centreline u validation - Comparison with benchmark
figure(11);
plot(u_final(:,(n_points+1)/2),1-y, 'LineWidth', 1)

tab_data = xlsread('plot_u_y_Ghia100.csv', 'A2:B18');
y_ghia = tab_data(:,1);
u_ghia = tab_data(:,2);

figure(11); hold on
plot(u_ghia, y_ghia, 'o', 'LineWidth', 1)
xlabel('u')
ylabel('y')
legend('Numerical', 'Benchmark', 'location', 'southeast')

%% Contour and vector visuals.
x_dom = ((1:n_points)-1).*h;
y_dom = 1-((1:n_points)-1).*h;
[X,Y] = meshgrid(x_dom,y_dom);
figure(21);
contourf(X,Y,v_final, 21, 'LineStyle', 'none')
colorbar
colormap('jet')
xlabel('x')
ylabel('y')

figure(22);
hold on
quiver(X, Y, u_final, v_final, 5, 'k')