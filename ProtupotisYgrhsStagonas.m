
%%Ypologismos Energeias syndesis me vasi ton imiempeiriko tupo
%% tou Weizsacker protypo tis Ygris stagonas
clear all;close all;
%format statheron
g=9.81; 

prompt = {'Eisigage to maziko arithmo A','Eisigage ton  atomiko arithmo Z','kai ton arithmo netronio N'};
dlgtitle = 'Input';
dims = [1 35];
definput = {'44','22','22'};
answer = inputdlg(prompt,dlgtitle,dims,definput)
%answer = inputdlg(prompt)
%input = str2num(answer{1})
A=str2num(answer{1});
Z=str2num(answer{2});
N=str2num(answer{3});
B1=15.833*A;
B2=-18.33*A^(2/3);
B3=-23.2*(A-2*Z)^2/A;
B4=22.3*Z^2/A^(1/3);
if(mod(N,2)~=0 && mod(Z,2)~=0)
        B5=-11.2/A^(1/20);
    else if(mod(N,2)==0 && mod(Z,2)==0)
        B5=11.2/A^(1/2);
    else
        B5=0;

    end
B=B1+B2+B3+B4+B5;
disp("B");
end;
