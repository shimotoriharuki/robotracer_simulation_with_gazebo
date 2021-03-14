% Gazebo上のロボトレーサの位置
x = out.ideal_position.signals.values(:, 1);
y = out.ideal_position.signals.values(:, 2);

figure(1)
scatter(x, y)
axis equal


% IMUの角速度
omega = out.imu_z.signals.values;
time = linspace(0, length(omega), length(omega));

figure(2)
plot(time', omega)