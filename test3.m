%计算一个区域的面积f(x)
%重要性采样求均值，X,Y越小重要性越搞
%https://www.jianshu.com/p/3d30070932a8
function test3()
area =0;
n = 5000;
f = @(x) pdfl(x);
X = slicesample(0.1,n,'pdf',f,'thin',10,'burnin',1000);
Y = slicesample(0.1,n,'pdf',f,'thin',10,'burnin',1000);

    for i=1:n
        x = X(i);
        y = Y(i);
        rvl = customFun1(x,y);
        [weightX,weightY] = weight(x,y);
        area = area+rvl*weightX*weightY;
    
    end

area = area/n

end

%简单的一个图形 ,p(x)
function px=pdfl(x)
    b=0.1;
    a=0;

    px =0;
    if x>=b || x<=a
         px =0;
    else
         px =1/(b-a);
    end
   
end

%简单的斜线概率,接近a最大
function [weightX,weightY] = weight(x,y)
  b=1;
  a=0;
  qx = 2*(b-x)/(b-a)^2;
  qy = 2*(b-y)/(b-a)^2;
  
  px = 1/(b-a);
  py = 1/(b-a);
  
  weightX = px/qx;
  weightY = py/qy;
  
 
end

