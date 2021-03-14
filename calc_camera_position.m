center_position = [0.15 - 0.08; 0]; % [x; y]
sensor_num = 15; % 奇数
angle = deg2rad(120); % deg
angle_step = (angle / 2) / ((sensor_num - 1) / 2);
thetas = 0 : angle_step : angle / 2;

reverse_thetas = -flip(thetas);
reverse_thetas(end) = [];
thetas = [reverse_thetas, thetas];

positions = [];
for i = 1 : length(thetas)
    R = [cos(thetas(i)), -sin(thetas(i)); sin(thetas(i)), cos(thetas(i))];
    position = R * center_position;
    positions = [positions, position];
end

mergin = repmat(0.08, 1, sensor_num);
positions(1, :) = positions(1, :) + mergin;

scatter(positions(1, :), positions(2, :))
axis equal