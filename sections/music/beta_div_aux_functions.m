x = [0:0.01:5];

beta = [0.5 1 2 5];
y = zeros(length(beta), length(x));

for i = 1 : length(beta)
  y(i,:) = 1/beta(i) * (x.^beta(i));
end

subplot(1, 2, 1);
plot(x, y, 'LineWidth', 2); xlim([0 5]); ylim([0 10])

beta = [-0.5 -1 -2 -5];
y = zeros(length(beta), length(x));

for i = 1 : length(beta)
  y(i,:) = 1/beta(i) * (x.^beta(i));
end

subplot(1, 2, 2);
plot(x, y, 'LineWidth', 2); xlim([0 5]); ylim([-5 0])
