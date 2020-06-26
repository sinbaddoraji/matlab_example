% Save to Excel file 

% Table
Time = [1:0.2:10]';
Data = exp(Time);

t = table(Time, Data);
writetable(t, 'tmp.xlsx');


% Matrix
M = rand(10, 2);
writematrix(M, 'tmp.xlsx');