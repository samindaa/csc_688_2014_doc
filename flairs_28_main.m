% FLAIRS - 28 

clear all; close all; clc;

%dataset_name = 'data20141113-9-24-21walk.txt';
%dataset_name = 'data20141113-9-25-53seat-stand.txt';
%dataset_name = 'data20141113-9-29-3fall.txt';

%dataset_name = 'walk-forward-robot.txt';
%dataset_name = 'walk-backward-robot.txt';
%dataset_name = 'rotation-robot.txt';

%dataset_name = 'fall-forward-robot.txt';
dataset_name = 'fall-backward-robot.txt';
%dataset_name = 'fall-side-robot.txt';

dataset = load(dataset_name);
size(dataset)
%x = 1:size(dataset,1);
x = (1:600);
cc = hsv(8);
figure;
hold on;
for i = 1 : 6
    plot(x, dataset(x,i), 'color', cc(i,:), 'LineWidth', 1);
end
I = legend('$\dot{x}$', '$\dot{y}$', '$\dot{z}$', ... 
    '$\dot{\theta}_x$', '$\dot{\theta}_y$', ... 
    '$\dot{\theta}_z$', 'Location', 'northeast');
xlabel('Sample Number');
ylabel('Units');
axis([0, 600, -15, 20]);
hold off;
set(I,'interpreter','latex');
