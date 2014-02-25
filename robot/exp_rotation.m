% Zihan Chen
% 2014-02-25 

% NOTE
%   - show how to convert rotation between rotation matrix, 
%     axis angle, quaternion 
%   - lie algebra -> lie group  w -> exp(skew(w)) 
%   - example showing how to do angular velocity integration 

% Dependencies
%   - robot toolbox (http://petercorke.com/Robotics_Toolbox.html)

clc; clear;

%% 

% Rot at time t 
rt = rotx(pi/10);       % R(t) 
qrt = Quaternion(rt);   % R(t) quaternion 

% angular velocity  w = (wax, wan)  
w = [1 1 1];       % angular vel 
wan = norm(w);     % w angle 
wax = w/norm(w);   % w axis 

% rw from axis angle 
rw = angvec2r(wan, wax);    % R(w) 

% w in quaternion  
qw = Quaternion(wan, wax);  % qw use Quaternion class 
qwraw = [cos(wan/2), sin(wan/2) * wax]; % qw manually constructed

% lie group way 
rwlie = expm(skew(w));


%% rotaion multiplication 

% rot mat multiplication 
rtdt = rt * rw;     % R(t + dt) 

% quat multiplicaiton 
qrtdt = qrt * qw;   % QR(t + dt) 

% TODO: compare rtdt  qrtdt.R()  

