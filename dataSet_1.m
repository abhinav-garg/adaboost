function [x, y, positive_labels, negative_labels, x_trainSet, y_trainSet, x_testSet, y_testSet] = dataSet_1
% Uniform random distribution
    R = unifrnd(0,1,[2000,2]);
    x = R(:,1); y = R(:,2);
    labels = -1*ones(2000,1);
    positive_labels = (x >= 0.3).*(x <= 0.7).*(y >= 0.3).*(y <= 0.7);
    negative_labels = 1-positive_labels;
    [trainInd,valInd,testInd] = dividerand(2000,0.5,0.0,0.5);
    x_trainSet = x(trainInd); y_trainSet = y(trainInd); 
    x_testSet = x(testInd); y_testSet = y(testInd); 
%     scatter(x.*positive_labels, y.*positive_labels, 'b');
%     hold on;
%     scatter(x.*negative_labels, y.*negative_labels, 'r');
%     hold off;
%     scatter(x_trainSet, y_trainSet, 'g');
%     hold on;
%     scatter(x_testSet, y_testSet, 'y');
%     hold off;
end