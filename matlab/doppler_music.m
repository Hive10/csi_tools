csi_trace = read_bf_file('D:\time_test_3.31_1.dat');

M = 8; %样本数
f = 2e+7;
c = 3e+8;
X = [];
for ii = 1 : M
    csi_entry = csi_trace{ii};
    raw = squeeze(csi_entry.csi(1,1,:)).';
    X = [ X; raw];
end

Rx=X*X'/M;
[EV,D]=eig(Rx);    % 特征向量 特征值
EVA=diag(D)';

t = [];
for ij = 1 : M
    t(ij) = 0.3 * (ij - 1);
end

for jj = 1 : 61
    vel(jj) = (jj - 31)/10;
    
    a=exp(-1i*2*pi*f*vel(jj)*t/c).';
    
    En=EV(:,M);
    SP(jj)=1/(a'*En*En'*a);
end
SP=abs(SP);
SP=10*log10(SP);
h=plot(vel,SP);

