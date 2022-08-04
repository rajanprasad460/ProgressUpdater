function str=progressupdater(i,row,str_maj)
% function str=progressupdater(i,row,str_maj)
% progressupdater reads the current loop count, total loop, and user
% defined string to be displayed as an update to the user

s_progress=blanks(50);
progress=round(i/row*50);
progress2 = (i/row*50);
s_progress(1:progress)=repelem('*',progress);
a_progress=sprintf('%.2f%%',progress2*2);
s_progress(21:21+length(a_progress)-1)=a_progress;

clc;
str{1}=str_maj;
str{2}=sprintf('[%s] Complete \n',s_progress);
% fprintf('[%s] Complete \n',s_progress);
fprintf('%s\n%s',str{1},str{2});
end