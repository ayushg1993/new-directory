function [mm] = stat(x)
mm = 0
x_mean= mean(x)
standard_deviation = st_deviation(x)
y = x - mean(x)
medx = median(x)
//modx = mode(x)
medy = median(y)
//mody = mode(y)
y_mean = mean(y)
printf('\nmean of data is: %f', x_mean)
printf('\nmedian of data is: %f', medx)
//printf('\nmode of data is: %f', modx)
printf('\nstandard deviation of data is : %f', standard_deviation)
printf('\nmean of noise is :%f', y_mean)
printf('\nmedian of noise is: %f', medy)
//printf('\nmode of noise is: %f', mody)
result = [x_mean,standard_deviation,y_mean]
//printf('\n stat result is : %f ', result)



                // 2*sigma^2 term
                den = standard_deviation;
                den = 2 * den * den;

               // sqrt(2*pi*sigma^2) term
                coeff = standard_deviation;
                coeff = 2 * %pi * coeff * coeff;
                coeff = sqrt(coeff);
num = y;
for i=1:100
num(i) = y(i)*y(i);
end
printf("\nSize %f",size(num,1));
// gaussian distribution function
gaussian = (1/coeff) * exp(0-(num/den));
mm = mm + gaussian;
//printf('total prob is %f',mm)
endfunction