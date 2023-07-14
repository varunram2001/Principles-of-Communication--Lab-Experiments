function v = rp3(M,N) % RANDOM PROCESS #3
a = 0.5;
m = 3;
v = (rand(M,N)-0.5).*m + a;
end