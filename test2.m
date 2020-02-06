%计算一个区域的面积f(x)
%接受拒绝采样
%https://www.jianshu.com/p/3d30070932a8
function test2()
area =0;
n = 5000;
    for i=1:n
        x = rand;
        y = rand;
        rvl1 = customFun1(x,y);
        rvl2 = customFun2(x,y);
        k=1;
        u = rand;
        if u<rvl1/(k*rvl2)
          area = area+rvl2;
        end
    end

area = area/n

end

%简单的一个图形 ,p(x)
function rvl = customFun1(x,y)
  if x>=0 && x<=0.1 && y>=0 && y<=0.1
      rvl =1;
  else
      rvl =0;
  end
end


%简单的一个图形，外包q(z)的选取要有一定规则：q(z)与p(z)外形要相近，q(z)采样方便。
function rvl = customFun2(x,y)
  if x>=0 && x<=0.5 && y>=0 && y<=0.5
      rvl =1;
  else
      rvl =0;
  end
end

