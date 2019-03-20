clear; close all; clc;
rng(2); %for reproducibility
% cov_mtx=...
%     [2,10,3;...
%     10,1,1.5;...
%     3,1.5,1];

my_V = ...
    [-0.6975,-0.1223,-0.7060;...
    0.7085,-0.2649,-0.6541;...
    0.1071,0.9565,-0.2715];
my_D = ...
    [-8, 0, 0;...
    0, 3,0;...
    0,0,12];
cov_mtx = my_V*my_D*inv(my_V);
    
%% data scatter plot
xy = randn(1000,3);
xy_min = min(min(cov_mtx*xy'));
xy_max = max(max(cov_mtx*xy'));
new_xy = cov_mtx*xy';

%% projection
output = vector_projection_3d(transpose(new_xy),cov_mtx,2);

