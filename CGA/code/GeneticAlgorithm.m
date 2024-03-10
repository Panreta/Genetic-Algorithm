clear;clc
%%定义
%varnum 变量个数（此为一元函数）
%  eps 精度
%  lb ub 变量范围
%  n 种群大小
%  pc 交叉概率
%  pm 变异概率
%  M 动态线性变换

  f= @(x) 11*sin(6*x)+7*cos(5*x) % @定义x

%% 绘图
ezplot(f)
hold on %添加新绘图时保持原有绘图
h= plot(0,0,'*');
varnum=1;%变量个数
n=30;
lb=0;%% lower bound
ub=0.4;
eps=1e-2;
pc=0.57; % 较大 0.4~0.9
pm=0.01; % 较小
maxgen=200;

%%初始化种群
for i=1:varnum
    L(i)=ceil(log2((ub(i)-lb(i))/eps+1)); %ceil:向正无穷舍入,[log2(201)],给出8位表示数字
end

LS= sum(L);% 当varnum=1,LS=L(1)，因为L成为标量
pop = randi([0,1],n,LS);% randi: rand-integer,30个8位的二进制数
spoint = cumsum([0 L]);  %第一个变量占有长度，[0,8]
special_guest = 14
guest_hat = 0
%% 二进制到十进制
for iter = 1:maxgen% 1-200
    for i=1:n% 1-30
        for j=1:varnum
            startpoint=spoint(j)+1;
            endpoint=spoint(j+1);
            real(i,j) =decode(pop(i,startpoint:endpoint),lb(j),ub(j));% decode()二进制到十进制
        % m文件，pop(i,startpoint:endpoint)提取某一行，代表一个染色体
        end
    end
%生成real 30*1 为 x轴上的撒点,为什么不直接在-1到1上生成随机数
    %% 计算适应度值
    fitvalue = fitnessfun(real);%做成适应值
    % 精英保留
    if max(fitvalue) > special_guest
        [bestfitness,bestindex]=max(fitvalue)%最值多少，以及索引
        bestindividual=real(bestindex,:)%real中对应索引的行
        fval=objfun(bestindividual)%上一行值的函数值
        guest_hat= bestindividual
        special_guest = fval 
    end
    fval = objfun(real);
    % 某种
    h.XData =real;
    h.YData =fval;
    %
    pause(0.001)

    %% 选择
    [dad,mom]=selection(pop,fitvalue);

    %%交叉
    newpop = crossover(dad,mom,pc)

    %% 变异
    newpop=mutation(newpop,pm);
     pop=newpop;

end
plot(guest_hat,special_guest,'*')
guest_hat
special_guest
 
