%%createn of 100 random matrices
m = 2.^(3:102); %8,16,32,64 ......  100 values
%% eigen values plotting

 for j = 1:length(m)
    
A = randn(m(j),m(j))/sqrt(m(j));
eigen = eig(A);
%%superimposing on previous figure
plot(m(j),real(eigen),'c*',m(j),imag(eigen),'g*');
hold on;
    
end
xlabel('m');
ylabel('eigen values');

%norm plotting

for j = 1:length(m)
    
A = randn(m(j),m(j))/sqrt(m(j));
norms = norm(A);
plot(m(j),norms,'c*');
hold on;
    
end
xlabel('m');
ylabel('norms');


