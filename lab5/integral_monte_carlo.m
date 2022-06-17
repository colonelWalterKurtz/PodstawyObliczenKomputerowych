clear;
close all;

%całkowita ilość punktów wykorzystanych w szacowaniu wartości
N=100000; 

%zapisanie funkcji całki
fun = @(x) 1/(sqrt(2*pi))*exp(-(x.^2/2));

%wartość właściwa całki
wart=integral(fun,0,3);

%Monte Carlo
x=3*rand(1,N);
y=3*rand(1,N);
do_funkcji=fun(x);
warunek=y<=do_funkcji;
ile=sum(warunek); 
wart_szacowana=9*ile/N;

%rysowanie 
nieWarunek=y>do_funkcji;
scatter(x(warunek),y(warunek),'red','.');
hold on
scatter(x(nieWarunek),y(nieWarunek),'blue','.');