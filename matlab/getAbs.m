
csi_trace = read_bf_file('D:\time_test.dat');

for i=1:200%������ȡ�����ݰ��ĸ���
        csi_entry = csi_trace{i};
        csi = get_scaled_csi(csi_entry); %��ȡcsi����    
        csi =csi(1,:,:);
        csi1=angle(squeeze(csi).');          %��ȡ��ֵ(��ά+ת��)

        %ֻȡһ�����ߵ�����
        first_ant_csi(:,i)=csi1(:,1);           %ֱ��ȡ��һ������(����Ҫforѭ��ȡ)
        second_ant_csi(:,i)=csi1(:,2);
        third_ant_csi(:,i)=csi1(:,3);
                     
        for j=1:30

            csi15_end(i,:)=csi1(j,:);           %3���ŵ���j�����ز�

        end

end

 

%����һ�����ߵ��ز�
figure;
plot(first_ant_csi.')
figure;
plot(second_ant_csi.')
figure;
plot(third_ant_csi.')
