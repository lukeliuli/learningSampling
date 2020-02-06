%计算一个区域的面积f(x)
%均匀采样
function test1()
area =0
n = 5000
    for i=1:n
        x = rand;
        y = rand;
        rvl = customFun(x,y);
        area = area+rvl;
    end

area = area/n

end

function rvl = customFun(x,y)
  if x>=0 && x<=0.1 && y>=0 && y<=0.1
      rvl =1;
  else
      rvl =0;
  end
end

