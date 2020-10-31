str = 'C:\Users\WINSTON\Desktop\�޸�ͼ��\';

% ����ͼƬ��СΪ430*430*h
for k = 1:100
    img = imread([str,num2str(k),'.jpg']);
    [m,n,h] = size(img);
    outimg = uint8(ones(430,430,h));
    outimg(:,:,1) = outimg(:,:,1)*img(1,1,1);
    outimg(:,:,2) = outimg(:,:,2)*img(1,1,2);
    outimg(:,:,3) = outimg(:,:,3)*img(1,1,3);
    if m>430 || n>430
       img = imresize(img , 430/max(m,n));
       [m,n,~] = size(img);
    end
    outimg(round((430-m)/2)+1:round((430-m)/2)+m,round((430-n)/2)+1:round((430-n)/2)+n,:)=img;
    imwrite(outimg,['C:\Users\WINSTON\Desktop\�޸�ͼ��\',num2str(k),'.jpg']);
end
