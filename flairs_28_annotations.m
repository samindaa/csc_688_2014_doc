% FLAIRS_28 

clear all; close all; clc;

dataset = load('fall-anotation-human.txt');
[m, n] = size(dataset);
cc = hsv(n);
x = (1:120);
Figure1 = figure;
hold on;
for i = 1 : n 
    plot(x, dataset(x,i), 'color', cc(i,:), 'LineWidth', 1);
end
I = legend('$\dot{x}$', '$\dot{y}$', '$\dot{z}$', 'Location', 'best');
xlabel('Sampling');
ylabel('ms^2');
hold off;
set(I,'interpreter','latex');
set(Figure1,'defaulttextinterpreter','latex');