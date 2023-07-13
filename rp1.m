function v = rp1(M,N) % RANDOM PROCESS #1
a = 0.02;
b = 10;
Mc = ones(M,1)*b*sin((1:N)*pi/N);
Ac = a*ones(M,1)*[1:N];
v = (rand(M,N)-0.1).*Mc + Ac;
end
