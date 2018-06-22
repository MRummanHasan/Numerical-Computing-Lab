% Score of PSL Karachi VS Zalmi
% http://www.espncricinfo.com/series/8679/commentary/1128850/karachi-kings-vs-peshawar-zalmi-eliminator-2-pakistan-super-league-2018
% 

%  Team One Score
t1 = [2 13 4 10 25 15 19 3 16 13 10 7 5 11 6 11];
%  Team Two Score
t2 = [2 15 19 29 54 69 88 91 107 120 130 137 142];
%  Mixed Array
t = []; % format [t(1) t(1); t(2) t(2); ...]

for i=1 : 12
    t = [t; t1(i) t2(i)];
end
bar (t);




