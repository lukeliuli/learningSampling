%����һ����������f(x)
%���ܾܾ�����
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

%�򵥵�һ��ͼ�� ,p(x)
function rvl = customFun1(x,y)
  if x>=0 && x<=0.1 && y>=0 && y<=0.1
      rvl =1;
  else
      rvl =0;
  end
end


%�򵥵�һ��ͼ�Σ����q(z)��ѡȡҪ��һ������q(z)��p(z)����Ҫ�����q(z)�������㡣
function rvl = customFun2(x,y)
  if x>=0 && x<=0.5 && y>=0 && y<=0.5
      rvl =1;
  else
      rvl =0;
  end
end

