@[TOC](习题七)

### 7.1
*一位古怪的多米诺骨牌搜集者，搜集了 $2 \times n$ 个骨牌。他为每个垂直的多米诺牌付 4 美元，而为每个水平的多米诺牌付 1 美元。根据这一标准，有多少种铺设恰好值 $m$ 美元？例如当 $m=6$ 时有三个解.*

用 $\rule{1ex}{2ex}$ 表示一个垂直的多米诺牌  
用 $\boxminus$ 表示两个水平的多米诺牌  
我们有：
\[
T = \dfrac{|}{| - \rule{1ex}{2ex} - \boxminus}
\]

用 $z$ 的指数表示搜集者支付的美元：
\[
z^4 ：支付 4 美元 \\
z^1 ：支付 1 美元 \\
有：T = \dfrac{1}{1-z^4-z^2} \\
\]
当 $m$ 为奇数时，明显不存在解  
而当 $m$ 为偶数时：  
\[
在第六章我们有：F(z) = \dfrac{z}{1-z-z^2} \\
\begin{align}
因此：[z^n] \left( \dfrac{1}{1-z-z^2} \right) &= F_{n+1} \\
[z^{\frac{n}{2}}] \left( \dfrac{1}{1-z-z^2} \right) &= F_{\frac{n}{2}+1} \\
\Rightarrow [z^m] \left( \dfrac{1}{1-z^2-z^4} \right) &= F_{{\frac{m}{2}}+1}
\end{align}
\]
此时，有 $F_{{\frac{m}{2}} + 1}$ 种铺设方式

### 7.2
*给出数列 $\langle 2, 5, 13, 35, \cdots \rangle = \langle 2^n + 3^n \rangle$ 的生成函数和指数生成函数的封闭形式.*

生成函数：
\[
\begin{align}
G(z) &= \sum_{n \geqslant 0} (2^n + 3^n) z^n \\
 &= \sum_{n \geqslant 0} (2z)^n + \sum_{n \geqslant 0} (3z)^n \\
 &= \dfrac{1}{1-2z} + \dfrac{1}{1-3z}
\end{align}
\]
指数生成函数：
\[
\begin{align}
\hat{G}(z) &= \sum_{n \geqslant 0} (2^n + 3^n) \dfrac{z^n}{n!} \\
 &= \sum_{n \geqslant 0} \dfrac{2^n}{n!} z^n + \sum_{n \geqslant 0} \dfrac{3^n}{n!} z^n \\
 &= e^{2z} + e^{3z}
\end{align}
\]

### 7.3
*$\sum_{n \geqslant 0} H_n / 10^n$ 等于什么？*

由公式：
\[
\boxed{\dfrac{1}{(1-z)^{m+1}} \ln{\dfrac{1}{1-z}} = \sum_{n \geqslant 0} (H_{m+n} - H_m) \binom{m+n}{n} z^n \ .}
\]
取 $m = 0 \ , \ z = 10^{-1}$ 得：
\[
\dfrac{10}{9} \ln{\dfrac{10}{9}} = \sum_{n \geqslant 0} \dfrac{H_n}{10^n}
\]

### 7.4
*有理函数 $P(z) / Q(z)$ 的一般展开定理并不完全是一般性的，因为它要求 $P$ 的次数小于 $Q$ 的次数。如果 $P$ 有更大的次数，将会发生什么？*

如果 $P$ 有更大的次数，则 $P(z)/Q(z)$ 得到的商 $T(z)$ ，在 $n$ 较小的时候，不能忽略不计，必须加到 $[z^n] P(z) / Q(z)$ 中.

### 7.5
*求一个生成函数 $S(z)$ ，使得：*
\[
[z^n] S(z) = \sum_k \binom{r}{k} \binom{r}{n-2k}.
\]

注意到：
\[
(1+z)^r = \sum_k \binom{r}{k} z^k \\
(1+z^2)^{r} = \sum_k \binom{r}{k} z^{2k}
\]

将两者进行卷积：
\[
(1+z)^r (1+z^2)^r = \sum_n \left( \sum_k \binom{r}{k} \binom{r}{n-2k} \right) z^n \\
\Rightarrow [z^n] (1+z+z^2+z^3)^r = \sum_k \binom{r}{k} \binom{r}{n-2k} \\
\therefore S(z) = (1+z+z^2+z^3)^r
\]

### 7.6
*证明，递归式：*
\[
\begin{align}
g_0 &= g_1 = 1 \\
g_n &= g_{n-1} + 2 g_{n-2} + (-1)^n \ , \quad n \geqslant 2
\end{align}
\]
*可以用成套方法而不用生成函数求解.*

可以设：
\[
\begin{align}
g_0 &= \alpha \\
g_1 &= \beta \\
g_n &= g_{n-1} + 2g_{n-2} + (-1)^n \gamma
\end{align}
\]
因此：
\[
g_n = A(n) \alpha + B(n) \beta + C(n) \gamma
\]
当 $\alpha = 1 \ , \ \beta = 2 \ , \ \gamma = 0$ 时：
\[
\begin{align}
g_0 &= 1 \\
g_1 &= 2 \\
g_n &= g_{n-1} + 2 g_{n-2} \\
\Rightarrow g_n &= 2^n
\end{align}
\]
当 $\alpha = 1 \ , \ \beta = -1 \ , \ \gamma = 0$ 时：
\[
\begin{align}
g_0 &= 1 \\
g_1 &= -1 \\
g_n &= g_{n-1} + 2 g_{n-2} \\
\Rightarrow g_n &= (-1)^n
\end{align}
\]
当 $\alpha = 0 \ , \ \beta = -1 \ , \ \gamma = 3$ 时：
\[
\begin{align}
g_0 &= 0 \\
g_1 &= -1 \\
g_n &= g_{n-1} + 2 g_{n-2} + (-1)^n \cdot 3 \\
\Rightarrow g_n &= (-1)^n n
\end{align}
\]
综上：
\[
\begin{cases}
A(n) + 2B(n) = 2^n \\
A(n) - B(n) = (-1)^n \\
-B(n) + 3C(n) = (-1)^n n
\end{cases}
\]

### 7.7
*求解递归式：*
\[
\begin{align}
g_0 &= 1 \\
g_n &= g_{n-1} + 2 g_{n-2} + \cdots + n g_0 \ , \quad n > 0
\end{align}
\]

将递归式写成关于 $g_n$ 的单个方程：
\[
g_n =
\begin{cases}
0 \ , \quad n < 0 \\
1 \ , \quad n = 0 \\
g_{n-1} + 2g_{n-2} + \cdots + ng_0 \ , \quad n > 0
\end{cases} \\[6pt]
\begin{align}
\Rightarrow g_n &= g_{n-1} + 2g_{n-2} + \cdots + ng_0 \\
 & \phantom{=} + (n+1)g_{-1} + \cdots \\
 & \phantom{=} + [n = 0] + (-n) [n < 0]
\end{align}
\]
接着：
\[
\begin{align}
G(z) &= z G(z) + 2z^2 G(z) + \cdots + nz^n G(z) \\
 & \phantom{=} + (n+1)z^{n+1} G(z) + \cdots \\
 & \phantom{=} + \sum_n [n=0] z^n + \sum_n (-n)[n<0] z^n \\
\Rightarrow
G(z) &= \dfrac{z}{(1-z)^2} G(z) + 1 \\
\Rightarrow
G(z) &= \dfrac{(1-z)^2}{1-3z+z^2} \\
 &= 1 + \dfrac{z}{1-3z+z^2} \\
\end{align}
\]
而我们知道交错取 $F$ 的数列 $\langle F_0 , F_2 , F_4 , \cdots \rangle$ 就有：
\[
\sum_n F_{2n} z^n = \dfrac{z}{1-3z+z^2}
\]
因此有：
\[
g_n = F_{2n} + [n=0]
\]

### 7.8
*$[z^n] (\ln{(1-z)})^2 / (1-z)^{m+1}$ 等于什么？*

首先证明一个对复杂的乘积求微分的方法：
\[
\begin{align}
& \dfrac{d}{dx} \left( (x+n)^n \cdots (x+1)^1 \right) \\
&= (x+n)^n \cdots (x+1)^1 \left( \dfrac{n}{x+n} + \cdots + \dfrac{1}{x+1} \right)
\end{align}
\]

用数学归纳法：  

1.
\[
\begin{align}
(x+1)' &= 1 \\
((x+2)^2 (x+1))' &= 2(x+2)(x+1) + (x+2)^2 \\
&= (x+2)^2 (x+1) \left( \dfrac{2}{x+2} + \dfrac{1}{x+1} \right)
\end{align}
\]
2. 假设有：
\[
\begin{align}
& \dfrac{d}{dx} \left( (x+n-1)^{n-1} \cdots (x+1) \right) \\
&= (x+n-1)^{n-1} \cdots (x+1) \left( \dfrac{n-1}{x+n-1} + \cdots + \dfrac{1}{x+1} \right)
\end{align}
\]
3. 则有：
\[
\begin{align}
& \dfrac{d}{dx} \left( (x+n)^n (x+n-1)^{n-1} \cdots (x+1) \right) \\
&= n (x+n)^{n-1} (x+n-1)^{n-1} \cdots (x+1) \\
& \phantom{=} + (x+n)^n (x+n-1)^{n-1} \cdots (x+1) \left( \dfrac{n-1}{x+n-1} + \cdots + \dfrac{1}{x+1} \right) \\
&= (x+n)^n \cdots (x+1) \left( \dfrac{n}{x+n} + \cdots + \dfrac{1}{x+1} \right)
\end{align}
\]
即证原式成立

回到原题，我们对 $\displaystyle \frac{1}{(1-z)^{x+1}} = \sum_n \binom{x+n}{n} z^n$ 两边关于 $x$ 求导:
\[
\dfrac{d}{dx} ((1-z)^{-x-1}) = -(1-z)^{-x-1} \ln{(1-z)} \\
\dfrac{d}{dx} \left(\sum_n \binom{x+n}{n} z^n \right) = \sum_n z^n \dfrac{d}{dx} \left( \dfrac{(x+n) \cdots (x+1)}{n!} \right) \\
= \sum_n z^n \dfrac{(x+n) \cdots (x+1)}{n!} (\dfrac{1}{x+n} + \cdots + \dfrac{1}{x+1}) \\
= \sum_n \binom{x+n}{n} (H_{x+n} - H_x) z^n
\]

这其实得到了书中的公式 $7.43$  

让我们再一次对两边进行求导：
\[
\dfrac{d}{dx} ( -(1-z)^{-x-1} \ln{(1-z)} ) = \dfrac{\ln^2{(1-z)}}{(1-z)^{x+1}} \\
\dfrac{d}{dx} \left( \sum_n \binom{x+n}{n} (H_{x+n} - H_x) z^n \right) \\
= \sum_n z^n \dfrac{d}{dx} \left( \binom{x+n}{n} (\dfrac{1}{x+n} + \cdots + \dfrac{1}{x+1} ) \right) \\
= \sum_n z^n \left( \binom{x+n}{n} (\dfrac{1}{x+n} + \cdots + \dfrac{1}{x+1})^2 + \\
 \binom{x+n}{n} (\dfrac{-1}{(x+n)^2} + \cdots + \dfrac{-1}{(x+1)^2}) \right) \\
= \sum_n \binom{x+n}{n} ((H_{x+n} - H_x)^2 - H_{x+n}^{(2)} + H_x^{(2)} ) z^n
\]

因此：
\[
[z^n] \dfrac{(\ln{(1-z)})^2}{(1-z)^{m+1}} = \binom{m+n}{n} ((H_{m+n} - H_m)^2 - H_{m+n}^{(2)} + H_m^{(2)})
\]

### 7.9
*利用上一题的结果计算 $\sum_{k=0}^n H_k H_{n-k}$.*

在上一题中，我们得到了公式 $7.43$ ，令其中 $x$ 为零：
\[
\boxed{\dfrac{1}{1-z} \ln{\dfrac{1}{1-z}} = \sum_n H_n z^n \ .}
\]
记 $H(z) = \sum_n H_n z^n$ 则：
\[
\begin{align}
H^2(z) &= \sum_n (\sum_k H_n H_{n-k}) z^n \\
 &= \dfrac{1}{(1-z)^2} \ln^2{(\dfrac{1}{1-z})} \\
 &= \dfrac{\ln^2{(1-z)}}{(1-z)^2}
\end{align}
\]
\[
\begin{align}
\Rightarrow [z^n] H^2(z)
 &= \left. \binom{m+n}{n} ((H_{m+n} - H_m)^2 - H_{m+n}^{(2)} + H_m^{(2)}) \right|_{m=1} \\
 &= (n+1) \left( H_n^2 - \dfrac{2n}{n+1} H_n + \dfrac{2n}{n+1} - H_n^{(2)} \right) \\
 &= (n+1)( H_n^2 -  H_n^{(2)} ) - 2n (H_n - 1)
\end{align}
\]

### 7.10
*在恒等式*
\[
\sum_k \binom{r+k}{k} \binom{s+n-k}{n-k} (H_{r+k} - H_r) \\
= \binom{r+s+n+1}{n} (H_{r+s+n+1} - H_{r+s+1}).
\]
*中令 $r = s = -1 / 2$ ，然后利用与 $\displaystyle \binom{n-1/2}{n} = \left. \binom{2n}{n} \right/ 2^{2n}$ 相似的技巧去掉所有出现的 $1 / 2$ ，你推导出什么样惊人的恒等式？*

\[
\sum_k \binom{k - \frac{1}{2}}{k} \binom{n-k - \frac{1}{2}}{n-k} (H_{k-\frac{1}{2}} - H_{-\frac{1}{2}}) = H_n \\
\Rightarrow \sum_k \dfrac{\binom{2k}{k}}{2^{2k}} \dfrac{\binom{2n-2k}{n-k}}{2^{2n-2k}} (H_{k-\frac{1}{2}} - H_{-\frac{1}{2}})= H_n \\
\Rightarrow \sum_k \binom{2k}{k} \binom{2n-2k}{n-k} (H_{k-\frac{1}{2}} - H_{-\frac{1}{2}}) = 4^n H_n
\]

### 7.11
*这个问题的三个部分是相互独立的，它可以作为处理生成函数的练习。我们假设 $A(z) = \sum_n a_n z^n \ , \ B(z) = \sum_n b_n z^n \ , \ C(z) = \sum_n c_n z^n$ ，且对取负值的 $n$ 其系数为零.*  
*a. 如果 $c_n = \sum_{j+2k \leqslant n}a_j b_k$，试用 $A$ 和 $B$ 表示 $C$.*  
*b. 如果 $n b_n = \sum_{k=0}^n 2^k a_k / (n-k)!$ ，试用 $B$ 表示 $A$.*  
*c. 如果 $r$ 是实数，且 $\displaystyle a_n = \sum_{k=0}^n \binom{r+k}{k} b_{n-k}$ ，试用 $B$ 表示 $A$；然后用你的公式求系数 $f_k(r)$ ，使得 $b_n = \sum_{k=0}^n f_k(r) a_{n-k}$.*  

a.  
\[
\begin{align}
\because c_n - c_{n-1} &= \sum_{j+2k \leqslant n} a_j b_k - \sum_{j+2k \leqslant n-1}  a_j b_k \\
&= \sum_{j+2k = n} a_j b_k = \sum_k a_{n-2k} b_k \\
&= [z^n] (A(z) B(z^2)) \\[6pt]
\therefore C(z) - \sum_n c_{n-1} z^n &= \sum_n [z^n] (A(z) B(z^2)) z^n \\
\Rightarrow C(z) - z C(z) &= A(z) B(z^2) \\[6pt]
C(z) &= \dfrac{A(z) B(z^2)}{1-z}
\end{align}
\]

b.
\[
\begin{align}
\because n b_n &= \sum_{k=0}^n \dfrac{2^k a_k}{(n-k)!} \\
\therefore \sum_n (n b_n) z^n &= \sum_n \sum_{k=0}^n \dfrac{2^k a_k}{(n-k)!} z^n \\
\because B'(z) &= \sum_n (n+1) b_{n+1} z^n \\
\therefore z B'(z) &= \sum_n n b_n z^n \\
 &= \sum_n \sum_{k=0}^n \dfrac{2^k a_k}{(n-k)!} z^n \\
\because A(z) &= \sum_n a_n z^n \\
\therefore A(2z) &= \sum_n a_n 2^n z^{n} \\
\because e^z &= \sum_n \dfrac{1}{n!} z^n \\
\therefore A(2z) \cdot e^z &= \sum_n \left( \sum_k \dfrac{2^k a_k}{(n-k)!} \right) z^n \\
\Rightarrow A(2z) &= \dfrac{z B'(z)}{e^z} \\
A(z) &= \dfrac{z}{2 e^{z/2}} B'(\dfrac{1}{2} z)
\end{align}
\]

c.
利用公式：
\[
\boxed{\dfrac{1}{(1-z)^c} = \sum_n \binom{c+n-1}{n} z^n \ .}
\]
则将 $B(z)$ 和 $\dfrac{1}{(1-z)^{r+1}}$ 进行卷积：
\[
\dfrac{B(z)}{(1-z)^{r+1}} = \sum_n \left( \sum_k \binom{r+k}{k} b_{n-k} \right) z^n \\
\therefore a_n = [z^n] \dfrac{B(z)}{(1-z)^{r+1}} \\
\Rightarrow A(z) = \sum_n a_n z^n = \dfrac{B(z)}{(1-z)^{r+1}} \\
\]

因此：
\[
B(z) = (1-z)^{r+1} A(z) \\
\begin{align}
\sum_n b_n z^n &= \left( \sum_n \binom{n-r-2}{n} z^n \right) \left( \sum_n a_n z^n \right) \\
&= \sum_n \left(\sum_k \binom{k-r-2}{k} a_{n-k} \right) z^n
\end{align} \\
\Rightarrow f_k(r) = \binom{k-r-2}{k} = (-1)^k \binom{r+1}{k}
\]

### 7.12
*将数 $\{ 1, 2, \cdots, 2n \}$ 排列成一个 $2 \times n$ 阵列，使得行和列按照从左向右以及从上向下都递增的次序排列，这样有多少种方式？例如，当 $n=5$ 时的一个解是：*
\[
\left(
  \begin{array}{cccc}
   1, &2, &4, &5, &8 \\
   3, &6, &7, &9, &10
  \end{array} \right)
\]

将总共 $2n$ 个数看作是由 $+1$ 和 $-1$ 组成的数列： $\langle a_1, a_2, \cdots , a_{2n} \rangle$ 。  
其中第一行的数作为 $+1$ 出现的下标，第二行作为 $-1$ 出现的下标。  
由题意：从左到右以及从上到下都是递增的，即满足它们所有的部分和都是非负的，且 $+1$ 出现了 $n$ 次，$-1$ 出现了 $n$ 次，形成一一对应关系  

因此一共有 $C_n$ 种方式

### 7.13
*证明在 $[z^n] G(z)^l = \displaystyle \binom{mn+l}{n} \frac{l}{mn+l}$ 前面陈述的 $Raney$ 的推广引理.*

$Raney$ 的推广引理是说：*如果 $\langle x_1, x_2, \cdots, x_m \rangle$ 是满足对所有 $j$ 皆有 $x_j \leqslant 1$ 的任意一个整数数列，且 $x_1 + x_2 + \cdots + x_m = l > 0$ ，那么循环移位：*
\[
\langle x_1, x_2, \cdots, x_m \rangle \ , \ \langle x_2, \cdots, x_m, x_1 \rangle \ , \cdots, \ \langle x_m, x_1, \cdots, x_{m-1} \rangle
\]
*中恰好有 $l$ 个有全部为正的部分和。*

证明：将此数列周期性地延拓下去得到一个无穷数列：$\langle x_1, x_2, \cdots, x_m, x_1, x_2, \cdots, x_m, x_1, x_2, \cdots \rangle$

对所有的 $k>0$ 设 $x_{m+k} = x_k$ ，再将部分和 $s_n = x_1 + \cdots + x_n$ 描绘成为 $n$ 的函数，那么 $s_n$ 的“平均斜率”为 $\dfrac{l}{m}$

可以作 $l$ 条辅助线：$y = 1, y = 2, \cdots, y = l$ ，因为对所有 $j$ 皆有 $x_j \leqslant 1$ ，故这 $l$ 条辅助线都与 $s_n$ 图像相交。我们可以取这 $l$ 条辅助线与 $s_n$ 的最后一个交点，这样即可保证此交点之后的连续和必定全部为正。

因此，循环移位的值即为这 $l$ 个交点的 $x$ 坐标模 $m$ 之后的结果。

例如：
对应于数列：$\langle -2,1,-1,0,1,1,-1,1,1,1 \rangle$ 的示例图像：
![avatar](C:\Users\Aurainting\Documents\ConcreteMathematics\RaneyExample.png)

最后的交点分别是 $17$ 和 $24$ ，模 $10$ 之后可得 $7,4$ ，即为循环移位的值。

绘图代码：
```python
import numpy as np
import matplotlib.pyplot as plt

sequence = [-2,1,-1,0,1,1,-1,1,1,1]

x_value = list(range(0,30))
y_value = []
tmp = 0
for times in range(0,3):
    for y in sequence:
        tmp += y
        y_value.append(tmp)

upper = np.arange(30)
lower = np.arange(30)

plt.figure(figsize=(16,8))
plt.plot(x_value, y_value)

plt.plot(lower, 0.2 * lower - 2.6, color = 'b')
plt.plot(upper, 0.2 * upper + 0.2, color = 'b')

plt.axhline(y=1, color = 'r', linestyle='--')
plt.axhline(y=2, color = 'r', linestyle='--')

plt.xlabel("x(n)")
plt.ylabel("S(n)")
plt.show()
```

### 7.14
*用指数生成函数求解递归式：*
\[
\begin{align}
g_0 &= 0 \ , \quad g_1 = 1 \\
g_n &= -2n g_{n-1} + \sum_k \binom{n}{k} g_k g_{n-k} \ , \quad n > 1
\end{align}
\]

原递归式可化为：
\[
\begin{align}
\dfrac{g_0}{0!} &= 0 \ , \quad \dfrac{g_1}{1!} = 1 \\
\dfrac{g_n}{n!} &= -2 \dfrac{g_{n-1}}{(n-1)!} + \sum_k \dfrac{\binom{n}{k}}{n!} g_k g_{n-k} \ , \ n > 1 \\
\Rightarrow \dfrac{g_n}{n!} &= -2 \dfrac{g_{n-1}}{(n-1)!} + \sum_k \dfrac{g_k g_{n-k}}{k! \ (n-k)!} + [n=1] \\
\sum_n \dfrac{g^n}{n!} z^n &= -2 \sum_n \dfrac{g_{n-1}}{(n-1)!} z^n + \sum_n \left( \sum_k \dfrac{g_k}{k!} \dfrac{g_{n-k}}{(n-k)!} \right) z^n \\
 &+ \sum_n [n=1] z^n \\
\Rightarrow \hat{G}(z) &= -2z \hat{G}(z) + \hat{G}(z) \cdot \hat{G}(z) + z \\
\hat{G}(z) &= \dfrac{2z + 1 \pm \sqrt{4z^2 + 1}}{2} \\
\because g_0 &= 0 \\
\therefore \hat{G}(0) &= \dfrac{1 - 1}{2} = \dfrac{g_0}{0!} = 0 \\
\Rightarrow \hat{G}(z) &= \dfrac{2z + 1 - \sqrt{4z^2 + 1}}{2}
\end{align}
\]

利用二项式定理：
\[
\begin{align}
(1+4z^2)^{1/2} &= \sum_{k \geqslant 0} \binom{1/2}{k} (4z^2)^k \\
 &= 1 + \sum_{k \geqslant 1} \dfrac{(\dfrac{1}{2})^{\underline{k}}}{k!} (4z^2)^k \\
 &= 1 + \sum_{k \geqslant 1} \dfrac{(\dfrac{1}{2}) !}{k! \ (\dfrac{1}{2} - k)!} (4z^2)^k \\
 &= 1 + \sum_{k \geqslant 1} \dfrac{\dfrac{1}{2} \Gamma{(\dfrac{1}{2}})}{k! \ (\dfrac{1}{2} - k)!} (4z^2)^k \\
 &= 1 + \sum_{k \geqslant 1} \dfrac{(- \dfrac{1}{2})!}{2k \cdot (k-1)! \ (\dfrac{1}{2} - k)!} (4z^2)^k \\
 &= 1 + \sum_{k \geqslant 1} \dfrac{1}{2k} \binom{-1/2}{k-1} (4z^2)^k
\end{align}
\]

再利用公式 $5.37$ ：
\[
\boxed{\binom{-1/2}{n} = \left( \dfrac{-1}{4} \right)^n \binom{2n}{n} \ , \quad n \ 是整数 \ .}
\]
从而：
\[
\begin{align}
\hat{G}(z) &= \dfrac{2z + 1 - \sqrt{4z^2 + 1}}{2} \\
 &= z - \sum_{k \geqslant 1} \dfrac{1}{4k} \binom{-1/2}{k-1} (4z^2)^k \\
 &= z - \sum_{k \geqslant 1} \dfrac{(-1)^{k-1}}{k} \binom{2k-2}{k-1} z^{2k}
\end{align}
\]
注意到除了 $z^1$ 以外，$z$ 的奇数次项全为 $0$ ，因此：
\[
g_{2n+1} = 0 \ , \quad n > 0
\]
而由 $C_n = \displaystyle \binom{2n}{n} \frac{1}{n+1}$ ，因此偶数次项为：
\[
\begin{align}
g_{2n} &= (2n)! \ \dfrac{(-1)^n}{n} \binom{2n-2}{n-1} \\
 &= (-1)^n (2n)! \ C_{n-1} \ , \quad n > 0
\end{align}
\]

### 7.15
*贝尔数 $\varpi_n$ 是将 $n$ 件物品划分成子集的方法数。例如 $\varpi_3 = 5$ ，因为我们可以用以下方法对 $\{ 1, 2, 3 \}$ 进行划分：*
\[
\{ 1, 2, 3 \} \ ; \quad \{ 1, 2 \} \cup \{ 3 \} \ ; \quad \{ 1, 3 \} \cup \{ 2 \} \\
\{ 1 \} \cup \{ 2, 3 \} \ ; \quad \{ 1 \} \cup \{ 2 \} \cup \{ 3 \} .
\]
*证明 $\varpi_{n+1} = \sum_k \binom{n}{k} \varpi_{n-k}$ ，并用这个递归式求出指数生成函数 $P(z) = \sum_n \varpi_n z^n / n!$ 的封闭形式.*

组合学解释：

考虑第 $n+1$ 号物品，所有情况无非：
在包含第 $n+1$ 号物品的子集中，有 $k$ 个其他的元素。  

因此，先从前 $n$ 件物品中选取 $k$ 个和第 $n+1$ 号构成同一子集，方法数有 $\displaystyle\binom{n}{k}$ 个；并将剩下的 $n-k$ 个物品划分成 $\varpi_{n-k}$ 个子集，将两者方法数相乘（即将第 $n+1$ 号元素所在子集与 $n-k$ 个物品划分成的所有子集相与），得到一类情况。  

最后对 $k$ 求和，即可求得所有情况：
\[
\varpi_{n+1} = \sum_k \binom{n}{k} \varpi_{n-k}
\]

指数生成函数：
\[
\begin{align}
\hat{P}(z) &= \sum_n \dfrac{\varpi_n z^n}{n!} \\
\Rightarrow \hat{P}'(z) &= \sum_n \dfrac{\varpi_{n+1} z^{n}}{n!} \\
 &= \sum_n \sum_k \binom{n}{k} \dfrac{\varpi_{n-k}}{n!} z^n \\
\because \hat{P}(z) \cdot e^z &= \sum_n \left( \sum_k \dfrac{1}{k!} \dfrac{\varpi_{n-k}}{(n-k)!} \right) z^n \\
\therefore \hat{P}'(z) &= \hat{P}(z) \cdot e^z \\
不妨记 \ y = \hat{P}(z) ，& 原式即为：\dfrac{\mathrm{d}y}{\mathrm{d}x} = y \cdot e^x \\
因此：\int \dfrac{\mathrm{d}y}{y} &= \int e^x \mathrm{d} x \\
\Rightarrow \ln{y} &= e^x + C \\
\therefore \hat{P}(z) &= e^{e^z + C} \\[6pt]
\because \hat{P}(0) &= 1 \\
\therefore \hat{P}(z) &= e^{e^z - 1}
\end{align}
\]

或者，由第六章对于第二类斯特林数的解释：
\[
\genfrac{\{}{\}}{0pt}{} {n}{k} ：将一个有 n 件物品的集合划分成 k 个非空子集的方法数
\]
因此：
\[
\varpi_n = \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} \\
\Rightarrow \hat{P}(z) = \sum_n \dfrac{\varpi_n z^n}{n!} \\
 = \sum_n \left( \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} \dfrac{1}{n!} \right) z^n
\]
由公式 $7.49$：
\[
\boxed{(e^z - 1)^m = m! \sum_{n \geqslant 0} \genfrac{\{}{\}}{0pt}{} {n}{m} \dfrac{z^n}{n!} \ .}
\]
所以：
\[
\begin{align}
\hat{P}(z) &= \sum_k \sum_n \genfrac{\{}{\}}{0pt}{} {n}{k} \dfrac{z^n}{n!} \\
&= \sum_k \dfrac{(e^z - 1)^k}{k!} \\
&= e^{e^z - 1} \quad （利用 e^z 的生成函数）
\end{align}
\]

### 7.16
*两个数列 $\langle a_n \rangle$ 和 $\langle b_n \rangle$ 由卷积公式：*
\[
b_n = \sum_{k_1 + 2k_2 + \cdots + nk_n = n} \binom{a_1 + k_1 - 1}{k_1} \binom{a_2 + k_2 - 1}{k_2} \cdots \binom{a_n + k_n - 1}{k_n}
\]
*联系在一起。又有 $a_0 = 0$ 以及 $b_0 = 1$ 。证明：对应的生成函数满足 $\ln{B(z)} = A(z) + \dfrac{1}{2} A(z^2) + \dfrac{1}{3} A(z^3) + \cdots$.*

\[
\begin{align}
若取 \ \sum_n b_n z^n &= \sum_n \binom{a_1 + n - 1}{n} z^n \cdot \sum_n \binom{a_2 + n - 1}{n} z^{2n} \cdots \\
则 \ b_n &= \sum_{k_1 + 2 k_2 + \dots + n k_n = n} \binom{a_1 + k_1 - 1}{k_1} \binom{a_2 + k_2 - 1}{k_2} \cdots \\
\Rightarrow B(z) &= \dfrac{1}{(1-z)^{a_1} (1-z^2)^{a_2} \cdots} \\
\ln{B(z)} &= a_1 \ln{\dfrac{1}{1-z}} + a_2 \ln{\dfrac{1}{1-z^2}} + \dots \\
\ln{B(z)} &= a_1 \sum_{n \geqslant 1} \dfrac{1}{n} z^n + a_2 \sum_{n \geqslant 1} \dfrac{1}{n} z^{2n} + \dots \\
又 \ &A(z) + \dfrac{1}{2} A(z^2) + \dfrac{1}{3} A(z^3) + \dots \\
&= \sum_n a_n z^n + \sum_n \dfrac{a_n}{2} z^{2n} + \sum_n \dfrac{a_n}{3} z^{3n} + \dots \\
&= a_1 \sum_{n \geqslant 1} \dfrac{1}{n} z^n + a_2 \sum_{n \geqslant 1} \dfrac{1}{n} z^{2n} + \dots \\
即证 \ \ln{B(z)} &= A(z) + \dfrac{1}{2} A(z^2) + \dfrac{1}{3} A(z^3) + \cdots
\end{align}
\]

### 7.17
*证明：一个数列的指数生成函数 $\hat{G}(z)$ 与通常的生成函数 $G(z)$ 由公式：*
\[
\int_0^{\infty} \hat{G}(zt) e^{-t} \mathrm{d}t = G(z)
\]
*联系在一起，如果这个积分存在的话.*

由公式：
\[
\boxed{\int_0^{\infty} t^n e^{-t} \mathrm{d} t = n! \ . }
\]
因此：
\[
\int_0^{\infty} \sum_n g_n \dfrac{z^n t^n}{n!} e^{-t} \mathrm{d} t = \sum_n g_n z^n = G(z)
\]

### 7.18
*求以下数列的狄利克雷生成函数：*  
*a. $g_n = \sqrt{n}$*  
*b. $g_n = \ln{n}$*  
*c. $g_n = [n \ 无平方因子]$*  
*将你的答案用 $\zeta$ 函数表示出来. （无平方因子性质在习题 4.13 ([link](https://blog.csdn.net/qq_46013251/article/details/113815562))中定义）*

a.  
\[
g_n = \sqrt{n} = n^{\frac{1}{2}} \\
\Rightarrow \tilde{G}(z) = \sum_{n \geqslant 1} \dfrac{n^{1/2}}{n^z} = \sum_{n \geqslant 1} \dfrac{1}{n^{z - 1/2}} = \zeta (z - \dfrac{1}{2})
\]
b.  
\[
\tilde{G}(z) = \sum_{n \geqslant 1} \dfrac{\ln{n}}{n^z} \\
\because \zeta'(z) = \sum_{n \geqslant 1} (n^{-z})' = \sum_{n \geqslant 1} - \dfrac{\ln{n}}{n^z} \\
\therefore \tilde{G}(z) = - \zeta'(z)
\]
c.  
\[
任何一个自然数 \ n \ 都可以写成 \ n = m^2 q \ 的形式 （其中 \ q \ 无平方因子）\\
因此：\tilde{G}(z) = \sum_{n \geqslant 1} \dfrac{[n 无平方因子]}{n^z} \ 表示所有无平方因子的 \ \dfrac{1}{n^z} \ 相加 \\
而 \ \zeta{(2z)} = \sum_{n \geqslant 1} \dfrac{1}{n^{2z}} \ 表示所有有平方因子的 \ \dfrac{1}{n^z} \ 相加 \\
所以：\tilde{G}(z) \cdot \zeta{(2z)} = \zeta{(z)} \\
\Rightarrow \tilde{G}(z) = \dfrac{\zeta{(z)}}{\zeta{(2z)}}
\]

### 7.19
*每个满足 $f_0 = 1$ 的幂级数 $F(z) = \sum_{n \geqslant 0} f_n z^n$ 按照规则：*
\[
F(z)^x = \sum_{n \geqslant 0} f_n(x) z^n
\]
*定义一个多项式数列 $f_n(x)$ ，其中 $f_n(1) = f_n$ ，而 $f_n(0) = [n = 0]$ . 一般来说， $f_n(x)$ 的次数为 $n$ ，证明：这样的多项式总满足卷积公式：*
\[
\sum_{k=0}^n f_k (x) f_{n-k} (y) = f_n (x+y) \\
(x+y) \sum_{k=0}^n k f_k(x) f_{n-k}(y) = xn f_n (x+y)
\]

由题意，$F(z)^x F(z)^y = F(z)^{x+y}$ 中 $z^n$ 系数相等：
\[
\begin{align}
& \because F(z)^x = \sum_{n \geqslant 0} f_n(x) z^n \\
& \therefore F(z)^x \cdot F(z)^y \\[6pt]
&= \sum_{n \geqslant 0} f_n(x) z^n \cdot \sum_{n \geqslant 0} f_n(y) z^n \\
&= \sum_n \left( \sum_k f_k(x) \cdot f_{n-k}(y) \right) z^n
\end{align}\\
又 \ F(z)^{x+y} = \sum_{n \geqslant 0} f_n(x+y) z^n \\
\Rightarrow \sum_k f_k (x) \cdot f_{n-k}(y) = f_n (x+y)
\]

第二个等式：
\[
\because \dfrac{\partial}{\partial z} (F(z)^x) = xF(z)^{x-1} \cdot F'(z) \\
\therefore F'(z) \cdot F(z)^{x-1} = x^{-1} \dfrac{\partial}{\partial z} (F(z)^x) \\
由题意：
F'(z) F(z)^{x-1} F(z)^y = F(z)^{x+y-1} F'(z) \\
中 \ [z^{n-1}] \ 系数相等 \\
因此：x^{-1} \dfrac{\partial}{\partial z} (F(z)^x) \cdot F(z)^y = (x+y)^{-1} \dfrac{\partial}{\partial z}(F(z)^{x+y}) \\
\Rightarrow x^{-1} \sum_n n f_n (x) z^{n-1} \cdot \sum_n f_n (y) z^n \\
= (x+y)^{-1} \sum_n n f_n (x+y) z^{n-1} \\
[z^{n-1}] : x^{-1} \sum_k k f_k (x) f_{n-k} (y) = (x+y)^{-1} n f_n (x+y) \\
即证：(x+y) \sum_{k=0}^n k f_k(x) f_{n-k}(y) = xn f_n (x+y)
\]

### 7.21
*一个强盗抢劫了一家银行，索要由 10 美元和 20 美元组称的 500 美元。他还想知道可以将这笔钱付给他的方法数。求生成函数 $G(z)$ ，对于它这个数是 $[z^{500}] G(z)$ ，再求一个更紧凑的生成函数 $\check{G}(z)$ ，对于它这个数是 $[z^{500}] \check{G}(z)$ ，(a) 利用部分分式确定所要求的方法数；(b) 利用与 $\check{C}(z) = \dfrac{A(z)}{(1-z^{10})^5} \ , \ 其中 \ A(z) = A_0 + A_1 z + \cdots + A_{31} z^{31}.$ 类似的方法确定所要求的方法数.*

\[
不妨令 \ P = 1 + z^{10} + z^{20} + \dots \\
Q = 1 + z^{20} + z^{40} + z^{60} + \dots \\
\therefore G(z) = \dfrac{1}{1-z^{10}} \dfrac{1}{1-z^{20}} \\
\check{G}(z) = \dfrac{1}{1-z} \dfrac{1}{1-z^2}
\]
a.
\[
\begin{align}
\check{G}(z) &= \dfrac{1}{(1-z)^2} \cdot \dfrac{1}{1+z} \\
 &= \dfrac{1}{2} \dfrac{1}{(1-z)^2} + \dfrac{1}{4} \dfrac{1}{1-z} + \dfrac{1}{4} \dfrac{1}{1+z} \\
\Rightarrow [z^n] \check{G}(z) &= \dfrac{1}{2} (n+1) + \dfrac{1}{4} + \dfrac{1}{4} (-1)^n \\[6pt]
当 \ n &= 50 \ 时，[z^{50}] \check{G}(z) = 26
\end{align}
\]
b.
\[
\begin{align}
\check{G}(z) &= \dfrac{1}{1-z} \dfrac{1}{1-z^2} \\
 &= \dfrac{1+z}{(1-z^2)^2} \\
 &= (1+z) \sum_n (n+1) z^{2n} \\
 &= \sum_n (n+1) z^{2n} + \sum_n (n+1) z^{2n+1} \\
 &= \sum_n \left( \lfloor \dfrac{n}{2} \rfloor  + 1 \right) z^n \\
\Rightarrow [z^n] \check{G}(z) &= \lfloor \dfrac{n}{2} \rfloor + 1
\end{align}
\]

### 7.23
*一根 $2 \times 2 \times n$ 的柱子可以通过多少种方法用 $2 \times 1 \times 1$ 砖块建造？*

不妨记此种方法数为 $a_n$ ，再引入一个辅助量 $b_n$ ，其中 $b_n$ 是这样定义的，在 $2 \times 2 \times n$ 的柱子的最上方抽走一块，余下的“残缺的柱子”的搭法数。（抽走的这一块不应是竖着的）  
比如说这样：

![avatar](C:\Users\Aurainting\Documents\ConcreteMathematics\b_n_example.png)

或是这样:

![avatar](C:\Users\Aurainting\Documents\ConcreteMathematics\b_n_example2.png)

还有需要注意的是，实际问题中 $a_n$ 的计算是分 $x, y$ 坐标方向的，而我们引入的辅助量 $b_n$ 则不算，意思上面给出的两个 $b_n$ 算作一种情况。

因此可以很轻松地写出两者的递推关系（不妨记 $a_0 = 1$ ）：
\[
a_n = 2 a_{n-1} + 4 b_{n-1} + a_{n-2} + [n=0] \ , \\
b_n = a_{n-1} + b_{n-1}
\]

直接用图片来说明：  

$b_n$：

![avatar](C:\Users\Aurainting\Documents\ConcreteMathematics\b_n1.png)

（左边是 $a_{n-1}$ ，右边是 $b_{n-1}$ ）

$a_n$：

![avatar](C:\Users\Aurainting\Documents\ConcreteMathematics\a_n.png)

（前面三个是 $a_{n-2} , \ a_{n-1}$ ，后面四个是 $b_{n-1}$ ）

求解递推关系：
\[
\begin{align}
a_n &= 2 a_{n-1} + 4 b_{n-1} + a_{n-2} + [n=0] \\
\Rightarrow A(z) &= 2 z A(z) + 4 z B(z) + z^2 A(z) + 1 \\
b_n &= a_{n-1} + b_{n-1} \\
\Rightarrow B(z) &= z A(z) + z B(z) \\
\therefore A(z) &= \dfrac{1-z}{1-3z-3z^2+z^3} \\
 &= \dfrac{1-z}{(1+z)(1-4z+z^2)} \\
不妨记 \ W(z) &= \dfrac{1}{1-4z+z^2} \\
 &= \dfrac{1}{(z-2-\sqrt{3}) \ (z-2+\sqrt{3})} \\
 &= \dfrac{1}{(1-(2+\sqrt{3})z) \ (1-(2-\sqrt{3})z)} \\[6pt]
 &= \sum_n (2+\sqrt{3})^n z^n \cdot \sum_n (2-\sqrt{3})^n z^n \\
 &= \sum_n \left( \sum_k (2+\sqrt{3})^k (2-\sqrt{3})^{n-k} \right) z^n \\
\Rightarrow w_n &= (2-\sqrt{3})^n \sum_k (\dfrac{2+\sqrt{3}}{2-\sqrt{3}})^k \\
 &= \dfrac{(2+\sqrt{3})^{n+1} - (2-\sqrt{3})^{n+1}}{2\sqrt{3}} \\
\Rightarrow A(z) &= \dfrac{1-z}{1+z} W(z) \\
 &= (1-z) \cdot \sum_n (-1)^n z^n \cdot \sum_n w_n z^n \\
 &= (1-z) \cdot \sum_n \left(\sum_k w_k (-1)^{n-k} \right) z^n \\
\Rightarrow a_n &= \sum_{k=0}^n w_k (-1)^{n-k} - \sum_{k=0}^{n-1} w_k (-1)^{n-1-k} \\
 &= (-1)^{n+1} \left(2 \sum_{k=0}^{n-1} w_k (-1)^{k+1} + w_n (-1)^{n+1} \right) \\
\because & \sum_{k=0}^{n-1} \dfrac{(-2-\sqrt{3})^{k+1} - (\sqrt{3} - 2)^{k+1}}{2\sqrt{3}} \\
&= \dfrac{1}{2\sqrt{3}} ( \dfrac{(-3-\sqrt{3}) - (3-\sqrt{3})(-2-\sqrt{3})^{n+1}}{6} \\
&\phantom{=} - \dfrac{(\sqrt{3}-3) - (\sqrt{3} + 3)(\sqrt{3} - 2)^{n+1}}{6} ) \\
\therefore a_n &= (-1)^{n+1} \left(\dfrac{-2 + (-2-\sqrt{3})^{n+1} + (\sqrt{3} - 2)^{n+1}}{6} \right) \\
&= \dfrac{(2+\sqrt{3})^{n+1}}{6} + \dfrac{(2-\sqrt{3})^{n+1}}{6} - \dfrac{(-1)^{n+1}}{3}
\end{align}
\]

### 7.24
*当 $n \geqslant 3$ 时，在一个 $n$ 轮中有多少棵生成树？（ $n$ 轮的图形是：它在一个圆上有 $n$ 个“外面的”顶点，每一个这样的顶点都与第 $(n+1)$ 个位于“中心”的顶点相连接）.*

将中间那个第 $n+1$ 号顶点与边上的点分开考虑：  

边上顶点 $k$ 和 $k+1$ 之间的边有可能被选取作为树的组成部分，也有可能不被选到，而选取这些边的每一种方法都使得由相邻顶点组成的某些块相连通。  

但是，注意到这是一个轮，具有中心对称性，因此，要像考虑轮换那样考虑边的选取。  

仿照书中的例子，当 $n=10$ 时，可以选取 $\{ 1, 2 \} , \{ 3 \} , \{ 4, 5, 6, 7 \} , \{ 8, 9, 10 \}$ 连通，再通过向第 $11$ 号顶点（中间顶点）添加边，即可做出生成树。同理，有 $2$ 种方法将中间点与 $\{ 1, 2 \}$ 连接，有 $1$ 种方法将中间点与 $\{ 3 \}$ 连接...  
注意到在这种方法下，我们选取的 $k$ 值分别为：$k_1 = 2, k_2 = 1, k_3 = 4, k_4 = 3$ ，而满足此种方式的选法可以在顶点间进行轮换，例如，我们可以这么选： $\{ 2, 3 \} , \{ 4 \} , \{ 5, 6, 7, 8 \} , \{ 9, 10, 1 \}$ ，这就形成了一棵新的生成树，而总共的轮换种数为 $n$ ，因此，我们写下如下式子：
\[
\sum_{m > 0} \sum_{\substack{k_1 + k_2 + \dots + k_m = n \\
  k_1, k_2, \cdots k_m > 0}} k_1 k_2 k_3 \cdots k_m \cdot n
\]
但这是有重复的，如先前假设的例子，重复就重复在了 $k_1, k_2, k_3, k_4$ 的值与 $2, 1, 4, 3$ 不需要轮换。因此，删除重复种类：
\[
f_n = \sum_{m > 0} \sum_{\substack{k_1 + k_2 + \dots + k_m = n \\
  k_1, k_2, \cdots k_m > 0}} k_1 k_2 k_3 \cdots k_m \cdot \dfrac{n}{m}
\]

$f_n$ 是关于数列 $\langle 1, 2, 3, \cdots \rangle$ 的 $m$ 重卷积和式的式子  

因此，不妨设$G(z) = \dfrac{z}{(1-z)^2} = \sum_{n \geqslant 1} n z^n$

所以：
\[
\begin{align}
f_n &= n \cdot [z^n] G(z) + \dfrac{n \cdot [z^n]G(z)^2}{2} + \cdots \\
 &= [z^{n-1}] \dfrac{\mathrm{d}}{\mathrm{d}z} G(z) + [z^{n-1}] \dfrac{\mathrm{d}}{\mathrm{d}z} \dfrac{G(z)^2}{2} + \cdots \\
 &= [z^{n-1}] \dfrac{\mathrm{d}}{\mathrm{d}z} \left( \ln{\dfrac{1}{1-G(z)}} \right) \\
 &= [z^{n-1}] \dfrac{(1+z)}{(1-z)(1-3z+z^2)} \\
 &= [z^n] \dfrac{z(1+z)}{(1-z) (1-\frac{3+\sqrt{5}}{2}z) (1-\frac{3-\sqrt{5}}{2}z)} \\
\end{align}
\]
利用不同根的有理展开定理：
\[
\begin{align}
P(z) &= z (1+z) \\
Q(z) &= (1-z) (1-\dfrac{3+\sqrt{5}}{2}z) (1-\dfrac{3-\sqrt{5}}{2}z) \\
Q'(z) &= -4 + 8z - 3z^2 \\
因此：f_n &= a_1 1^n + a_2 \left( \dfrac{3+\sqrt{5}}{2} \right)^n + a_3 \left( \dfrac{3-\sqrt{5}}{2} \right)^n \\
其中 \ a_1 &= \dfrac{(-1) P(1)}{Q'(1)} = -2 \\
a_2 &= \dfrac{(-\frac{3+\sqrt{5}}{2})(P(\frac{2}{3+\sqrt{5}}))}{Q'(\frac{2}{3+\sqrt{5}})} = 1 \\
a_3 &= \dfrac{(-\frac{3-\sqrt{5}}{2})(P(\frac{2}{3-\sqrt{5}}))}{Q'(\frac{2}{3-\sqrt{5}})} = 1 \\[6pt]
\Rightarrow f_n &= \left( \dfrac{3+\sqrt{5}}{2} \right)^n + \left( \dfrac{3-\sqrt{5}}{2} \right)^n - 2 \\
\end{align}
\]
还有聪明的读者会发现：
\[
f_n = F_{2n+1} + F_{2n-1} - 2
\]
用这个公式即可将轮中的生成树与斐波那契数列联系起来

### 7.26
*二阶斐波那契数 $\langle \Im_n \rangle$ 由递归式：*
\[
\begin{align}
\Im_0 &= 0 \ ; \quad \Im_1 = 1 \\
\Im_n &= \Im_{n-1} + \Im_{n-2} + F_n \ , \quad n > 1
\end{align}
\]
*定义。将 $\Im_n$ 用通常的斐波那契数 $F_n$ 与 $F_{n+1}$ 表示出来.*

\[
\Im_n = \Im_{n-1} + \Im_{n-2} + F_n \\
\begin{align}
\Rightarrow \sum_n \Im_n z^n = \Im (z) &= \sum_n \Im_{n-1} z^n + \sum_n \Im_{n-2} z^n + \sum_n F_n z^n \\
&= z \Im(z) + z^2 \Im(z) + F(z) \\
\Rightarrow \Im (z) &= \dfrac{F(z)}{1-z-z^2} \\
\because F(z) &= \dfrac{z}{1-z-z^2} \\
\therefore [z^n] (\Im (z)) &= \sum_{k = 0}^n \left( [z^k] (F(z)) \cdot [z^{n-k}] ( \dfrac{1}{1-z-z^2} ) \right) \\
 &= \sum_{k=0}^n (F_k \cdot F_{n-k+1}) \\
由公式：& \boxed{\sum_{k=0}^n F_k F_{n-k} = \dfrac{2n F_{n+1} - (n+1) F_n}{5} \ .} \\
原式 &= \dfrac{(2n+2) F_{n+2} - (n+2) F_{n+1}}{5} \\
 &= \dfrac{(2n+2)F_n + n F_{n+1}}{5}
\end{align}
\]

### 7.29
*斐波那契乘积的和式：*
\[
\sum_{m > 0} \sum_{\substack{k_1 + k_2 + \cdots + k_m = n \\ k_1, k_2, \cdots, k_m > 0}} F_{k_1} F_{k_2} \cdots F_{k_m}
\]
*等于什么？*

\[
\begin{align}
原式 &= \sum_{k_1 = n} F_{k_1} + \sum_{k_1 + k_2 = n} F_{k_1} F_{k_2} + \sum_{k_1 + k_2 + k_3 = n} F_{k_1} F_{k_2} F_{k_3} + \cdots \\
&= [z^n] \left( F(z) + F^2(z) + F^3(z) + \cdots \right) \\
&= [z^n] \left( \dfrac{1}{1-F(z)} \right) \\
&= [z^n] \left( \dfrac{1}{1 - \frac{z}{1-z-z^2}} \right) \\
&= [z^n] \left( 1 + \dfrac{z}{1-2z-z^2} \right) \\
&= [z^n] \left( \dfrac{1}{2 \sqrt{2}} ( \dfrac{1}{1-(1+\sqrt{2})z} - \dfrac{1}{1-(1-\sqrt{2})z} ) \right) \\
&= \dfrac{1}{2\sqrt{2}} \left( (1+\sqrt{2})^n - (1-\sqrt{2})^n \right)
\end{align}
\]

### 7.30
*如果生成函数 $G(z) = 1 / (1 - \alpha z) (1 - \beta z)$ 有部分分式分解 $a / (1 - \alpha z) + b / (1 - \beta z)$ ，那么 $G(z)^n$ 的部分分式分解是什么？*

由习题 $5.39$ ([link](https://blog.csdn.net/qq_46013251/article/details/114602440?spm=1001.2014.3001.5501))知：
\[
若 \ xy = ax + by \\
则 \ x^n y^n = \sum_{k=1}^n \binom{2n-1-k}{n-1} (a^n b^{n-k} x^k + a^{n-k} b^n y^k)
\]
因此：
\[
\begin{align}
\because G(z) &= \dfrac{1}{1-\alpha z} \cdot \dfrac{1}{1-\beta z} \\
&= \dfrac{a}{1-\alpha z} + \dfrac{b}{1-\beta z} \\
\therefore G(z)^n &= \left( \dfrac{1}{1-\alpha z} \right)^n \cdot \left( \dfrac{1}{1-\beta z} \right)^n \\
 &= \sum_{k=1}^n \binom{2n-1-k}{n-1} \\
 & \phantom{=} \left( a^n b^{n-k} \left( \dfrac{1}{1-\alpha z} \right)^k + a^{n-k} b^n \left( \dfrac{1}{1-\beta z} \right)^k \right) \\
\end{align}
\]

### 7.33
*$[w^m z^n] (\ln{(1+z)}) / (1-wz)$ 等于什么？*

\[
\because \dfrac{1}{1-cz} = \sum_n c^n z^n \\
 \ln{(1+z)} = \sum_{n \geqslant 1} \dfrac{(-1)^{n+1}}{n} z^n \\
\therefore \dfrac{\ln{(1+z)}}{1-wz} \\
= \left( \sum_{n \geqslant 1} \dfrac{(-1)^{n+1}}{n} z^n \right) \cdot \left( \sum_n w^n z^n \right) \\
= \sum_n \left( \dfrac{(-1)^{n-m+1}}{n-m} [n > m] \right) w^m z^n \\
\Rightarrow [w^m z^n] \left( \dfrac{\ln{(1+z)}}{1-wz} \right) = \dfrac{(-1)^{n-m+1}}{n-m} [n > m]
\]

### 7.35
*用两种方法计算和式 $\sum_{0 < k < n} 1 / k (n-k)$ :*  
*a. 将求和项展开成部分分式；*  
*b. 将和式当作卷积处理，并利用生成函数.*

a.
\[
\begin{align}
& \sum_{0 < k < n} \dfrac{1}{k(n-k)} \\
&= \sum_{0 < k < n} \left( \dfrac{1}{k} + \dfrac{1}{n-k} \right) \dfrac{1}{n} \\
&= \dfrac{1}{n} \left( \sum_{0 < k < n} \dfrac{1}{k} + \sum_{0 < k < n} \dfrac{1}{k} \right) \\
&= \dfrac{2}{n} H_{n-1}
\end{align}
\]
b.
\[
\begin{align}
& \sum_{0 < k < n} \dfrac{1}{k} \dfrac{1}{n-k} \\
&= \sum_k g_k g_{n-k} \ , \quad g_k = \dfrac{1}{k} \\
&= [z^n] G(z)^2 \ , \quad G(z) = \sum_n \dfrac{z^n}{n} = \ln{\dfrac{1}{1-z}} \\
由公式：\\
& \boxed{\left( \ln{\dfrac{1}{1-z}} \right)^m = m! \ \sum_{n \geqslant 0} \genfrac{[}{]}{0pt}{} {n}{m} \dfrac{z^n}{n!} \ .} \\
\Rightarrow G(z)^2 &= \left( \ln{\dfrac{1}{1-z}} \right)^2 = 2 \sum_{n \geqslant 0} \genfrac{[}{]}{0pt}{} {n}{2} \dfrac{z^n}{n!} \\
由公式：\\
& \boxed{\genfrac{[}{]}{0pt}{} {n+1}{2} = n! \ H_{n} \ .} \\
\Rightarrow [z^n] G(z)^2 &= \dfrac{2}{n} H_{n-1}
\end{align}
\]

### 7.37
*设 $a_n$ 是将正整数 $n$ 表示成 $2$ 的幂之和的方法数，不考虑次序。例如 $a_4 = 4$ ，因为 $4 = 2+2 = 2+1+1 = 1+1+1+1$ 。习惯上，我们取 $a_0 = 1.$ 设 $b_n = \sum_{k=0}^n a_k$ 是前面若干个 $a$ 的累计和式。*  
*a. 做出一张直到 $n=10$ 的 $a$ 与 $b$ 的表。你会在这张表里观察到何种惊人的关系？（不需要证明）*  
*b. 将生成函数 $A(z)$ 表示成无穷乘积。*  
*c. 利用 b 中的表达式证明 a 中的结论。*

a.  
|$n$|0|1|2|3|4|5|6|7|8|9|10|
|--|--|--|--|--|--|--|--|--|--|--|--|
|$a_n$|1|1|2|2|4|4|6|6|10|10|14|
|$b_n$|1|2|4|6|10|14|20|26|36|46|60|

有： $a_{2n} = a_{2n+1} = b_n$  

b.  
由题意，将 $n$ 表示成 $2$ 的幂和，即：
\[
\begin{align}
A(z) &= (1 + z^1 + z^2 + z^3 + \cdots) (1 + z^2 + z^4 + z^6 + \dots) \\
 & \phantom{=} (1 + z^4 + z^8 + \cdots ) (1 + z^8 + z^{16} + \cdots) \cdots \\
\Rightarrow
A(z) &= \dfrac{1}{(1-z) (1-z^2) (1-z^4) (1-z^8) \cdots}
\end{align}
\]

c.  
\[
\begin{align}
\because A(z^2) &= \dfrac{1}{(1-z^2) (1-z^4) (1-z^8) (1-z^{16}) \cdots} \\
\therefore \dfrac{A(z^2)}{1-z} &= A(z) \\
\Rightarrow [z^{2n}] \left( \dfrac{A(z^2)}{1-z} \right) &= [z^{2n}] (A(z))\\
\Rightarrow \sum_k a_k &= a_{2n} \\
\therefore b_n &= a_{2n}
\end{align}
\]
而 $a_{2n+1}$ 就是在每个 $a_{2n}$ 的式子后 $+1$ ，总的种类数不变

### 7.39
*给定正整数 $m$ 和 $n$ ，求出*
\[
\sum_{1 \leqslant k_1 < k_2 < \cdots < k_m \leqslant n} k_1 k_2 \cdots k_m 和 \sum_{1 \leqslant k_1 \leqslant k_2 \leqslant \cdots \leqslant k_m \leqslant n} k_1 k_2 \cdots k_m
\]
*的封闭形式.*  
*（例如 $m=2$ 和 $n=3$ 时，相应的和是 $1 \times 2 + 1 \times 3 + 2 \times 3$ 以及 $1 \times 1 + 1 \times 2 + 1 \times 3 + 2 \times 2 + 2 \times 3 + 3 \times 3$ ）*  
*（提示：生成函数 $(1+a_1z) \cdots (1+a_nz)$ 和 $1 / (1-a_1z) \cdots (1-a_nz)$ 中 $z^m$ 的系数是什么？）*

\[
[z^m] ((1 + a_1 z) \cdots (1 + a_n z)) = \sum_{1 \leqslant k_1 < k_2 < \dots < k_m \leqslant n} a_{k_1} a_{k_2} \dots a_{k_m} \\
令 \ a_1 = 1 , a_2 = 2 , \cdots , a_n = n \\
\therefore 要求 \ [z^m] ( (1+z)(1+2z) \dots (1+nz) ) \\
由公式：\boxed{z^{\overline{m}} = \sum_{n \geqslant 0} \genfrac{[}{]}{0pt}{} {m}{n} z^n \ .} \\
有：(z+1)^{\overline{n}} = (z+1) \cdots (z+n) = \sum_k \genfrac{[}{]}{0pt}{} {n+1}{k+1} z^{k} \\
这是在 n 个式子中取出 k 个前项，其余 n-k 个后项相乘得到 \\
而要求的式子则是在 n 个中取 m 个后项，其余取前项相乘 \\
因此有：[z^m] ( (1+z)(1+2z) \dots (1+nz) ) = \genfrac{[}{]}{0pt}{} {n+1}{n+1-m}
\]

\[
[z^m] (\dfrac{1}{(1-a_1z)(1-a_2z) \cdots (1-a_nz)}) \\
 = \sum_{1 \leqslant k_1 \leqslant k_2 \leqslant \dots \leqslant k_m \leqslant n} a_{k_1} a_{k_2} \dots a_{k_m} \\
令 \ a_1 = 1 , a_2 = 2 , \cdots , a_n = n \\
要求 \ [z^m] (\dfrac{1}{(1-z)(1-2z) \cdots (1-nz)}) \\
由公式：\boxed{(z^{-1})^{\overline{-m}} = \sum_{n \geqslant 0} \genfrac{\{}{\}}{0pt}{} {n}{m} z^n \ .} \\
有：[z^m] (\dfrac{1}{(1-z)(1-2z) \cdots (1-nz)}) = \genfrac{\{}{\}}{0pt}{} {m+n}{n}
\]
