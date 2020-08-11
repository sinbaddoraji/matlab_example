% UDP Send
% 2020/08/10 

% receive
u = udp('localhost', 'RemotePort', 5001);
fopen(u);
fprintf(u, '%f, %f, %f', [1,2,3]);

% close 
fclose(u);
delete(u);
clear u;