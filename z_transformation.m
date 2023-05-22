clc;
close all;

syms z;  % Define symbolic variable
X_z = ztrans([1 2 3 4], z);  % Define the input signal X(z)
disp('Z-transformation: ');
disp(X_z);  % Display the Z-transform of X(z)

%inverse Z-transformation
syms z;
X_z = (z + 1)/(z - 0.5);  % Define the Z-transform of X(z)
x_n = iztrans(X_z, z); % Compute the inverse Z-transform
disp('Inverse Z-transformation: ');
disp(x_n);% Display the inverse Z-transform

