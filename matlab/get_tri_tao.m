csi_trace = read_bf_file('D:\time_test.dat');

f = 2e+7;
csi_entry = csi_trace{1};
m = csi_entry.csi(1,1,1);
T0 = angle(m) /(-2*pi*f);

csi_entry2 = csi_trace{2};
n = csi_entry2.csi(1,1,1);
T1 = angle(n) /(-2*pi*f);

T = T1 - T0;

% csi_entry = csi_trace{1};
% t=0;
% t1=0;
% m1=zeros(30,1);
% p = plot(t1,m1);
% xlabel('time');
% ylabel('angle');
% for t=1:1000
%     csi_entry = csi_trace{t,:};
%     m = csi_entry.csi(:,:,1);
%     csi1 = get_scaled_csi(csi_entry);
% 
%     set(p(1),'XData',[1:30],'YData',angle(squeeze(csi1(1,1,1:30)).'),'color', 'b', 'linestyle', '-');
%     set(p(2),'XData',[1:30],'YData',angle(squeeze(csi1(1,2,1:30)).'),'color', 'g', 'linestyle', '-');
%     set(p(3),'XData',[1:30],'YData',angle(squeeze(csi1(1,3,1:30)).'),'color', 'r', 'linestyle', '-');
%     axis([1,30,-5,5]);
%     drawnow;
%     csi_entry = [];
%     pause(0.1);
% end

