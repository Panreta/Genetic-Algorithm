function fitvalue = fitnessfun(x)

Cmin=0.01
[row,~]=size(x);
for i=1:row %1-30
    fval=objfun(x(i,:));%按行提取
    if fval+Cmin >0
        fitvalue(i) = fval+Cmin %
    else
        fitvalue(i)=0
    end
end

%%
A=[1,2;3,4;5,6]
A(1,:)