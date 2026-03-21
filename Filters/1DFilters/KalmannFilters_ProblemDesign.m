% 1D Kalman Filter for Dog Tracking (Constant Velocity Model)

% GNU Octave

clear; clc; close all;

% Parameters
dt = 0.1;                % time step [s]
T = 20;                  % total simulation time [s]
N = round(T/dt);         % number of steps

% True motion (for simulation)
true_pos = zeros(1,N);
true_vel = 0.5 * ones(1,N);   % constant velocity 0.5 m/s
true_pos(1) = 0;
for k = 2:N
    true_pos(k) = true_pos(k-1) + true_vel(k-1)*dt;
end

% Generate noisy measurements (simulated RFID readings)
R = 0.1;                 % measurement noise variance
measurements = true_pos + sqrt(R)*randn(1,N);

% Kalman filter initialisation
x_est = [0; 0.5];        % initial state estimate [pos; vel]
P_est = [1, 0; 0, 1];    % initial error covariance

% Process noise covariance (tuned empirically)
sigma_a = 0.1;           % acceleration noise std
Q = [dt^4/4, dt^3/2; dt^3/2, dt^2] * sigma_a^2;

% Transition matrix
F = [1, dt; 0, 1];

% Measurement matrix
H = [1, 0];

% Storage for results
x_history = zeros(2, N);
x_history(:,1) = x_est;

% Run filter
for k = 2:N
    % Prediction
    x_pred = F * x_est;
    P_pred = F * P_est * F' + Q;

    % Update (only if measurement is available)
    z = measurements(k);
    y = z - H * x_pred;                 % innovation
    S = H * P_pred * H' + R;             % innovation covariance
    K = P_pred * H' / S;                  % Kalman gain
    x_est = x_pred + K * y;
    P_est = (eye(2) - K * H) * P_pred;

    % Store
    x_history(:,k) = x_est;
end

% Plot results
time = (0:N-1)*dt;
figure;
plot(time, true_pos, 'g-', 'LineWidth', 2); hold on;
plot(time, measurements, 'r.', 'MarkerSize', 6);
plot(time, x_history(1,:), 'b-', 'LineWidth', 2);
legend('True position', 'Noisy measurements', 'Kalman estimate');
xlabel('Time [s]'); ylabel('Position [m]');
title('1D Kalman Filter for Dog Tracking');
grid on;

