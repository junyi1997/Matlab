rang_x_min=.1;                         %x的範圍(最小值)
rang_x_max=10;                         %x的範圍(最大值)
Error_Value_x=1e-4;                    %x的誤差範圍
x=rang_x_min:Error_Value_x:rang_x_max; %定義出矩陣x的內容
F=x.^3-2+log(x);                       %在「*」，「/」及「^」之前加上一個句點(.)，MATLAB 將會執行矩陣內「元素對元素」（Element-by-element） 的運算
                                       %ln(x)=log(x)
                                       %log用法為log'以誰為底'(x),
                                       %ex:log(x)以10為底-->log10(x)
plot(x,F)                              %利用x的範圍對方程式F作圖
grid                                   %增加格線