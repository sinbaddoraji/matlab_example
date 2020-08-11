% UDP Receive
% 2020/08/10 

% Udp Send
% format (python)
% struct.pack('ffff', 1, 2, 3, 4)

% receive
ur = udp('localhost', 'LocalPort', 5001);
fopen(ur);
for i = 1:100
    % read as uint8
    tmp = uint8(fscanf(ur));
    % typecast to single
    data = typecast(tmp, 'single');
    pause(0.1)
end

fclose(ur);
delete(ur);
clear ur;

% flush udp buffer
% flushinput(u);

