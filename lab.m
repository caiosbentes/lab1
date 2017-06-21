T = 2;
L = 1;
k = 1;
M = 5;

a(M+1) = k*L/ T;

for n = -M:M
	if (n!=0)
    a(n+M+1) = (k*sin(pi * n * L/ T))/(n *pi);
  endif
endfor

%plot(-M:M,a)

x = -1:0.01:1;
f = 0;
for n= 1:M
  f = f + (2*a(n+M+1)*cos(n*pi*x));
endfor
f = f+ a(M+1)
%plot(x,f);
