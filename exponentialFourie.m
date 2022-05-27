% written by Mahdi Senobari
x = [0:0.005:1];

plot(x,exp(-x),'red','LineWidth',2);hold on;
legend('exp(-x)')


% for N=25:2:100
N=10
resualt =0 ;

for n=-N:1:N
    cn = (1 - 1/exp(1))*( (1-2j*n*pi)/(1+4*n*n*pi*pi) );
    f = cn.*exp(2j*pi*n.*x);
    resualt = resualt + f;
end

res = plot(x,real(resualt),'blue','LineWidth',3);
title(['exponential Fourie for exp(-x) for n=+-' num2str(N)]);
legend('Fourier')

% ax = gca;
% p='.jpg';
% exportgraphics(ax,[num2str(n,'%02d') p]);
% delete(res);
% end