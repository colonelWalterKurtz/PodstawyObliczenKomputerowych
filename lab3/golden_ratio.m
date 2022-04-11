clear all;
close all;
a_0=0;
b_0=2;
e=0.3;

%funkcja
f=@(x)x^4-14*x^3+60*x^2-70*x   
%golden ratio

ratio=abs((sqrt(5)-1)/2);
N=log(e/2)/log(ratio);

p=(3-sqrt(5))/2;

a_1=a_0+p*(b_0-a_0);
b_1=a_0+(1-p)*(b_0-a_0);

f(a_1)
f(b_1)

while ((abs(b_0-a_0)>e))

    if(f(a_1)<f(b_1))
        b_0=b_1;
        b_1=a_1;
        a_1=a_0+(1-p)*(b_1-a_0);
        
    else
        a_0=a_1;
        a_1=b_1;
        b_1=a_1+p*(b_0-a_1);
     end
   
end

a_0
b_0
  f(a_0)
  f(b_0)

  abs(b_0-a_0)





