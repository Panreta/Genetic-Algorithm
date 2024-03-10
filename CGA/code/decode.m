function real =decode(pop,lb,ub)
%% pop 种群
    %% varnum 变量个数
    [~,col]=size(pop);
    
    for j=col:-1:1
        temp(j)=2^(j-1)*pop(j);%%按先列后行蛇形，但是为什么这样算？
    end
    temp=sum(temp);%二进制数转十进制
    real=lb+temp*(ub-lb)/(2^col-1);
end

