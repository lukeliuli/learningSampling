%计算一个区域的面积f(x)
%MH采样
%https://blog.csdn.net/qq_23981335/article/details/89950979
%看代码都是用于参数估计，计算均值似乎没有找到方法
%但是如果把状态转移矩阵看成一个在0-1范围内均匀分布，其实就是把markov chain一般化，那就是MC模拟了
%alpha=min(1,p(xstar)/p(result[i]))
%中的p(star)不是0就是1

% 1.MCMC，MH,Gibbs，都需要已经知道采样对象的概率密度函数，但是我的研究前提是不知道概率密度函数，只知道是否在范围内
% 2.MCMC，MH,Gibbs，一般只