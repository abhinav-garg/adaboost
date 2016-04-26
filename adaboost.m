function adaboost
    R = unifrnd(0,1,[2000,2]);
    x = R(:,1); y = R(:,2);
    labels = -1*ones(2000,1);
    positive_labels = (x >= 0.3).*(x <= 0.7).*(y >= 0.3).*(y <= 0.7);
    negative_labels = 1-positive_labels;
    scatter(x.*positive_labels, y.*positive_labels, 'b');
    hold on;
    scatter(x.*negative_labels, y.*negative_labels, 'r');
end