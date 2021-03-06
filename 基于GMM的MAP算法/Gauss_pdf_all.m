function prog = Gauss_pdf_all( X,Mu,Sigma)
% 这里是为了测试使用,并不是整体的计算,而是单独的一个样本计算
% 计算公式：N(x|Mu,Sigma) = 1/((2pi)^(D/2))*(1/(abs(sigma))^0.5)*exp(-1/2*(x-Mu)'Sigma^(-1)*(x-Mu))
[D,T]=size(X);
%prog 是高斯密度函数
Xshift=X'-repmat(Mu',T,1);
inv_Sigma=inv(Sigma);
tmp=sum((Xshift*inv_Sigma).*Xshift,2);
coef=(2*pi)^(-D/2)*sqrt(abs(det(inv_Sigma)+realmin));%维度的大小应该不能太大
prog=coef*exp(-0.5*tmp);

end

