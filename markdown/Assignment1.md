## 习题一
### 1.2
将原来汉诺塔中，从$A$直接到$B$的步骤转化为以$C$作为过渡进行移动，因此，解出$$T(n)=3^n-1$$
下面用数学归纳法证明：

 1. 当$n=1$时，将圆盘从$A$移到$C$再到$B$，共花费$T(1)=3^1-1=2$步
 2. 假设当$n=k$时，将圆盘从$A$移到$B$需要花费$T(k)=3^k-1$步
 3. 则当$n=k+1$时，先将前$k$个圆盘移到$B$桩，花费$T(k)$步，再将第$k+1$个圆盘移到$C$桩，花费1步；接着将前$k$个圆盘移回$A$桩，花费$T(k)$步，将第$k+1$个圆盘移到$B$桩，花费1步；最后将$k$个圆盘再移动到$B$桩，花费$T(k)$步。因此，总共花费了$T(k+1)=3T(k)+2$步，即有$T(k+1)=3(3^k-1)+2=3^{k+1}-1$

由此可证：$T(n)=3^n-1$

### 1.6
前面已经证出，平面上$n$条直线所界定的区域的最大个数$L_n= \frac{n(n+1)}{2}+1, \ n \ge0$，因此，要求有界区域的最大个数，即相当于无界区域个数最少时的情形。而经过仔细观察$n=3$到$n=4$时无界区域个数的变化情况，会发现在区域1和2新增加了2个无界区域。![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/1858a81a5471b0f7b6510a7a27ebfb7d.png#pic_center)
由此易得当第$n$条直线与前$n-1$条直线相交于$n-1$个不同点时，每次增加的无界区域最小为$2n$个。因此，有界区域的最大个数$$T(n)= \frac{n(n+1)}{2}+1-2n=\frac{1}{2}n^2-\frac{3}{2}n+1, \ n \ge0$$
### 1.7
由$J$的定义式：
$$\begin{aligned} J(1)&=1 \\J(2n)&=2J(n)-1, \ n\ge1 \\ J(2n+1)&=2J(n)+1, \ n\ge1 \end{aligned}$$得：$J(2)=2J(1)-1=1$，而$H(n)=J(n+1)-J(n)$，所以$H(1)=J(2)-J(1)=0\ne2$，因此归纳法的基础情况不满足。
### 1.8
按照$Q_n$的定义式：$Q_n=\frac{1+Q_{n-1}}{Q_{n-2}}, \ n>1$，计算下去：$$\begin{aligned} Q_0&= \alpha \\
Q_1&=\beta \\ Q_2&=\frac{1+ \beta }{ \alpha } \\ Q_3&=\frac{1+ \alpha + \beta}{ \alpha \beta} \\ Q_4&=\frac{1+ \alpha}{\beta} \\ Q_5&=\alpha \\ Q_6&=\beta \\ \dots \end{aligned}$$易得，$Q_n$的周期为5，因此有：$Q_n=Q_{n+5}$
### 1.9
**a.** 若$P(n)$成立，即有 $$\begin{aligned} x_1 \dots x_n &\le (\frac{x_1+ \dots +x_n}{n})^n, \ x_1,\dots ,x_n \ge0 \\ \xrightarrow{x_n=\frac{x_1+ \dots +x_{n-1}}{n-1}} x_1 \dots x_{n-1} \frac{x_1+ \dots +x_{n-1}}{n-1} &\le (\frac{x_1+ \dots +x_{n-1}+\frac{x_1+\dots+x_{n-1}}{n-1}}{n})^n \\ \Leftrightarrow x_1 \dots x_{n-1} \frac{x_1+ \dots +x_{n-1}}{n-1} &\le (\frac{x_1+\dots+x_{n-1}}{n-1})^n \\ \Leftrightarrow x_1 \dots x_{n-1} &\le  (\frac{x_1+\dots+x_{n-1}}{n-1})^{n-1} \end{aligned}$$
所以，对于$P(n-1)$也成立。

 **b.** 若$P(2)$和$P(n)$成立，有：$$\begin{aligned} P(n):\ x_1\dots x_n &\le (\frac{x_1+ \dots +x_n}{n})^n \\ P'(n):\ x_{n+1}\dots x_{2n} &\le (\frac{x_{n+1}+ \dots +x_{2n}}{n})^n \end{aligned}$$ 所以：$$(x_1\dots x_n)(x_{n+1}\dots x_{2n}) \le (\frac{(x_1+\dots+x_n)(x_{n+1}+\dots+x_{2n})}{n^2})^n$$又：$$\begin{aligned} P(2): x_1x_2 &\le (\frac{x_1+x_2}{2})^2 \\ \Rightarrow (x_1+\dots+x_n)(x_{n+1}+\dots+x_{2n}) &\le(\frac{x_1+\dots+x_{2n}}{2})^2 \end{aligned}$$所以：$$ x_1\dots x_n x_{n+1} \dots x_{2n} \le(\frac{(\frac{x_1+\dots+x_{2n}}{2})^2}{n^2})^n =(\frac{x_1+\dots+x_{2n}}{2n})^{2n}$$
 即证$P(2n)$也成立。
 
**c.** 由**a,b**易知：$$\begin{aligned} &P(2) \rightarrow P(1); \\ &P(2)\wedge P(2) \rightarrow P(4) \rightarrow P(3) \rightarrow P(6) \rightarrow P(5) \rightarrow \dots \end{aligned}$$所以$P(n)$对所有$n$为真。
 
### 1.10
如图：
 ![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/8806454b57948c47982b4034ff1751f8.png#pic_center)
$Q_n$代表按顺时针将$n$个圆盘从$A$移到$B$的最少移动次数，$R_n$代表按顺时针将$n$个圆盘从$B$返回$A$的最少移动次数。理解的关键在于观察到$Q_n$需要移动的两个桩柱是相邻的，而$R_n$需要移动的桩柱之间隔了一根。
因此：$$Q_n =  \begin{cases} 0 &n=0, \\ 2R_{n-1}+1 &n>0, \\ \end{cases} $$ 意即先将前$n-1$个圆盘从$A$移到$C$，花费$R_{n-1}$步；再将第$n$个圆盘移到$B$，花费1步；最后再将$n-1$个圆盘从$C$移到$B$，花费$R_{n-1}$步。
$$R_n= \begin{cases} 0  &n=0, \\ 2R_{n-1}+1+Q_{n-1}+1=Q_n+Q_{n-1}+1 &n>0, \\ \end{cases}$$意即先将前$n-1$个圆盘从$B$移到$A$，花费$R_{n-1}$步；再将第$n$个圆盘从$B$移到$C$，花费1步；再将前$n-1$个圆盘从$A$移到$B$，花费$Q_{n-1}$步；接着将第$n$个圆盘从$C$移到$A$，花费1步；最后将前$n-1$个圆盘从$B$移到$A$，花费$R_{n-1}$步。

### 1.11
***a.***
因为相同尺寸的圆盘是不可区分的，且每一种尺寸的圆盘有两个。记有$n$种不同的圆盘，易得：$$\begin{aligned} A_1 &=2 \\ A_n&=2A_{n-1}+2, \ n>1 \end{aligned}$$再算出它的封闭形式：$$\begin{aligned} A_n+2 & =2(A_{n-1}+2) \\ \xrightarrow{C_n=A_n+2}C_n & =2C_{n-1} \\ \Rightarrow C_n & = 2^{n+1} \\ \Rightarrow A_n & =2^{n+1}-2 \end{aligned}$$
***b.***
如果需要在最后的排列中将所有同样尺寸的圆盘恢复到原来的上下顺序，则对于$n$种圆盘（$2n$个圆盘），有：$$\begin{aligned} B_1&=3 \\ B_n&=A_{n-1}+2+A_{n-1}+2+B_{n-1}, \ n>1 \end{aligned} $$假设是将$n$种圆盘（每种两个）从$A$柱移到$B$柱，以$C$柱为过渡。先将前$n-1$种圆盘不计顺序的从$A$移到$B$，花费$A_{n-1}$步；再将最后1种圆盘从$A$移到$C$，此时这2个圆盘在$C$柱上的顺序应该是反向的，花费2步；接着将前$n-1$种圆盘不计顺序的从$B$回到$A$，花费$A_{n-1}$步；此时将$C$柱上的两个反向的圆盘移到$B$柱上，这样两个圆盘就可以按照正确的顺序落在$B$柱上，花费2步；最后将前$n-1$种圆盘按顺序的从$A$移到$B$，花费$B_{n-1}$步
再算出它的封闭形式：$$\begin{aligned} B_n & = 2(2^n-2)+4+B_{n-1} \\ \Rightarrow  B_n & =B_{n-1}+2^{n+1} \\ \Rightarrow B_2 &= B_1 + 2^3 \\ B_3 &= B_2 + 2^4 \\ B_4 &= B_3 + 2^5 \\ \vdots \\ B_n  &= B_{n-1} + 2^{n+1} \\ \Rightarrow S_n -B_1 & =S_{n-1} +  \frac{2^3(2^{n-1}-1)}{2-1} \\ \Rightarrow S_n-S_{n-1} = B_n &= 2^{n+2} -5 \end{aligned}$$

### 1.13
我们可以将眼前的直线看作是有着极其细微的$Z$型折痕：
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/368d42f0254edac52df171dad7c457d0.png#pic_center)

因此，可以仿照直线切割平面区域来思考。同时又观察到，原本的每个交点现在会多增加8个区域，所以列出下面的递推方程：$$\begin{aligned} Z_1 & = 2 \\ Z_n & = Z_{n-1}+n+8(n-1), \ n>1 \end{aligned}$$意即，当第$n$条直线在$n-1$个不同地方与前面那些直线相交，会使区域个数新增加$n$个（这是直线切割的情况），再加上Z型交点新增加的$8(n-1)$个区域。进而算出它的封闭形式：$$\begin{aligned} Z_2 & = Z_1+9*2-8 \\ Z_3 & = Z_2 +9*3-8 \\ \vdots \\ Z_n & = Z_{n-1} +9n-8 \\ \Rightarrow S_n-2 & = S_{n-1} +9( \frac{(n-1)(2+n)}{2} ) -8(n-1) \\ \Rightarrow S_n - S_{n-1} = Z_n & = \frac{9}{2} n^2 - \frac{7}{2} n +1  \end{aligned}$$

### 1.14
首先计算出$n$很小时，$P_n$的值：$$ \begin{aligned} P_1  & = 2 \\ P_2 & = 4 \\ P_3 & = 8 \end{aligned} $$ 也许看上去很像是$P_n = 2^n$的关系，但实际上这是不可能的，因为不能保证每一刀都能触碰到之前分出的每一块。而要想让第$n$刀切下去时，蛋糕尽量分出更多份，需要保证前面$n-1$个切痕在这第$n$刀形成的平面上分出尽量多的区域，问题即转化为平面的直线分割。因此，$P_n$的递推公式为：$P_n = P_{n-1} + L_{n-1}$

### 1.15
要计算约瑟夫环的倒数第二个幸存者$I(n)$的号码，首先考虑基础情况：当$n$为2时，易知$I(2) = 2$，接着可以先算出$n$比较小时的情况，以此来观察规律：
| n | 2 | 3 4 5 | 6 7 8 9 10 11 | 12  $\dots$ | $\dots$ |
-- | --| --- | ------ |--- | -----
| $I(n)$ | 2 | 1 3 5 | 1 3 5 7 9 11 | 1 $\dots$  | $\dots$
写到这份上时，就很明显了，有：$$\begin{aligned} I(2) & = 2 \\ I(3*2 ^m + l) & = 2l +1, \ m \ge 0 , \ 0 \le l < 2^m \end{aligned}$$

### 1.16
首先看一种递归式的有趣的解法：$$\begin{aligned}  f(1) & = \alpha \\ f(2n+j) & = 2f(n) + \beta_{j}  \quad j=0,1 \quad n\ge1 \end{aligned}$$将它按照二进制展开：$$\begin{aligned} f((b_m b_{m-1} \dots b_1 b_0)_2) & = 2 f((b_m b_{m-1} \dots b_1)_2 ) + \beta_{b_0} \\ & = 4f((b_m b_{m-1} \dots b_2)_2) + 2\beta_{b_1} + \beta_{b_0} \\ & \vdots \\ &= 2^{m}f((b_m)_2) +2^{m-1} \beta_{b_{m-1}}+ \dots + 2\beta_{b_1} + \beta_{b_0} \\ & = 2^m \alpha + 2^{m-1} \beta_{b_{m-1}} + \dots + 2\beta_{b_1} + \beta_{b_0} \end{aligned}$$ 解除二进制的表示，从而允许各位上是任意数字，则有：$$f((b_m b_{m-1} \dots b_1 b_0)_2 ) = (\alpha \beta_{b_{m-1}} \beta_{b_{m-2}} \dots \beta_{b_1} \beta_{b_0} )_2$$再进一步推广，又有：$$\begin{aligned}f(j) & = \alpha_j  \quad 1\le j <d \\ f(dn + j ) & = cf(n) + \beta_j \quad 0 \le j < d , \  n \ge 1 \\ \Rightarrow f((b_m b_{m-1} \dots b_1 b_0)_d) & = (\alpha_{b_m} \beta_{b_{m-1}} \beta_{b_{m-2}} \dots \beta_{b_1} \beta_{b_0})_c \end{aligned}$$这里从基数为$d$的数开始，结果表示为基数为$c$的数。

而这道题目：$$\begin{aligned} g(1) & = \alpha \\ g(2n+j) &= 3g(n) + \gamma n + \beta_j \quad j = 0,1 \quad n\ge0 \end{aligned}$$首先设：$g(n) = a(n)\alpha + b(n) \beta_0 +c(n)\beta_1 + d(n) \gamma$，当$n= (b_m b_{m-1} \dots b_1 b_0)_2 \quad (b_m \ne 0)$ ，按照上面的思路，有：$$\begin{aligned}  g(\ (b_m b_{m-1} \dots b_1 b_0)_2 \ )  & = 3g( \ (b_m b_{m-1} \dots b_1)_2\ ) + \gamma * (b_m b_{m-1} \dots b_1)_2 +\beta_{b_0} \\ & = 3^2g( \ (b_m b_{m-1} \dots b_2)_2 \ )+ 3*\gamma*(b_m b_{m-1} \dots b_2)_2 +3\beta_{b_1} +\gamma * (b_m b_{m-1} \dots b_1)_2 +\beta_{b_0}  \\ \vdots \\ & =(\alpha_{b_m} \beta_{b_{m-1}} \beta_{b_{m-2}} \dots \beta_{b_1} \beta_{b_0})_3 + \gamma * (0 \ (b_m)_3 \ (b_m b_{m-1})_3 \dots \ (b_m \dots b_1)_3)_3  \\ & =a(n)\alpha +b(n) \beta_0 +c(n) \beta_1 +d(n)\gamma \end{aligned}$$因此，有：$$\begin{aligned} d(n) & = (0 \ (b_m)_3 \ (b_m b_{m-1})_3 \dots \ (b_m \dots b_1)_3)_3 \\ a(n) \alpha + b(n) \beta_0 +c(n) \beta_1  & = (\alpha_{b_m} \beta_{b_{m-1}} \beta_{b_{m-2}} \dots \beta_{b_1} \beta_{b_0})_3 \end{aligned}$$
 
之后再来用成套方法（repertoire method）解决这题：
取$g(n) = n$，则计算可知：$a(n) +c(n) -d(n) = n$ ，
取$g(n)=1$，有$a(n)-2b(n)-2c(n)=1$
所以：$b(n)=\frac{a(n)-2c(n)-1}{2}, \quad d(n)=a(n)+c(n) -n$

### 1.20
题目：$$\begin{aligned} h(1) = \alpha \\ h(2n+j) & = 4h(n) + \gamma_j n + \beta_j \quad j = 0,1 \quad n \ge 1\end{aligned}$$思路和上一题一样：设$h(n) = a(n) \alpha +b(n) \beta_0 +c(n) \beta_1 +d(n) \gamma_0 + e(n) \gamma_1$，当$n= (1 b_{m-1} \dots b_1 b_0)_2$时，有$a(n)\alpha +b(n)\beta_0 +c(n)\beta_1 = ( \alpha \beta_{b_{m-1}} \beta_{b_{m-2}} \dots \beta_{b_0})_4$
若$h(n)=n$，则$a(n)+c(n)-2d(n)-2e(n)=n$；
若$h(n) = n^2$，则$a(n)+c(n)+4e(n)=n^2$
所以：$d(n)=\frac{3a(n)+3c(n)-n^2-2n}{4}, \ e(n)=\frac{n^2-a(n)-c(n)}{4}$