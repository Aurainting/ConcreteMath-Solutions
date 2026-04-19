@[TOC](习题六)

### 6.1
*{1,2,3,4} 恰好有两个轮换的 $\genfrac{[}{]}{0pt}{} {4}{2} = 11$ 个排列是什么？（轮换的形式出现在 $(6.4)$ 中，而我们所需要的是 2314 这样的非轮换形式）*

直接枚举答案：  
2314, 2431, 3241, 1342, 3124, 4132, 4213, 1423, 2143, 3412, 4321.

### 6.2
*从一个有 $n$ 个元素的集合到一个有 $m$ 个元素的集合有 $m^n$ 个函数，其中有多少个恰好取 $k$ 个不同的函数值？*

函数：允许多对一，不许一对多。  
将 $n$ 个元素的集合分成 $k$ 个非空子集的方法数：$\displaystyle\genfrac{\{}{\}}{0pt}{} {n}{k}$  
从 $m$ 个元素的集合中选出 $k$ 个并排列的方法数：$\displaystyle\binom{m}{k} \cdot k! = m^{\underline{k}}$  
因此有：$\displaystyle\genfrac{\{}{\}}{0pt}{} {n}{k} m^{\underline{k}}$.

### 6.4
*将 $1/1 + 1/3 + \cdots + 1/(2n+1)$ 用调和数表示出来.*

\[
\begin{aligned}
\because H_n &= \frac{1}{1} + \frac{1}{2} + \cdots + \frac{1}{n} = \sum_{k=1}^n \frac{1}{k} \\
\therefore \frac{1}{2} H_n &= \frac{1}{2} + \frac{1}{4} + \cdots + \frac{1}{2n} = \sum_{k=1}^n \frac{1}{2k} \\
\Rightarrow 原式 &= H_{2n+1} - \frac{1}{2} H_n
\end{aligned}
\]

### 6.5
*说明怎样从*
\[
U_n(x,y) = \sum_{k \ge 1} \binom{n}{k} \frac{(-1)^{k-1}}{k} (x+ky)^n \ , \quad 整数 \ n \ge 0.
\]
*中 $U_n(x,y)$ 的定义得出递归式： $U_n(x,y) = x U_{n-1}(x,y) + x^n / n + yx^{n-1}$ ，并求解该递归式.*

\[
\begin{aligned}
U_n (x, y) &= \sum_{k \ge 1} \binom{n}{k} \frac{(-1)^{k-1}}{k} (x+ky)^{n-1} (x+ky) \\
 &= x \sum_{k \ge 1} \binom{n}{k} \frac{(-1)^{k-1}}{k} (x+ky)^{n-1} + y \sum_{k \ge 1} \binom{n}{k} (-1)^{k-1} (x+ky)^{n-1} \\
由公式：& \ \boxed{\binom{n}{k} = \binom{n-1}{k} + \binom{n-1}{k-1}.} \\
 &= x U_{n-1} (x, y) + x \sum_{k \ge 1} \binom{n-1}{k-1} \frac{(-1)^{k-1}}{k} (x+ky)^{n-1} \\
 & \quad + y \sum_{k \ge 1} \binom{n}{k} (-1)^{k-1} (x+ky)^{n-1} \\
 &= x U_{n-1} (x, y) + \left( \dfrac{x}{n} + y \right) \sum_{k \ge 1} \binom{n}{k} (-1)^{k-1} (x+ky)^{n-1}
\end{aligned}
\]
下面计算 $\sum_{k \ge 1} \binom{n}{k} (-1)^{k-1} (x+ky)^{n-1}$：
\[
\begin{aligned}
& \ \sum_{k \ge 1} \binom{n}{k} (-1)^{k-1} (x+ky)^{n-1} \\
 &= x^{n-1} + \sum_{k \ge 0} \binom{n}{k} (-1)^{k-1} (x+ky)^{n-1} \\
 &= x^{n-1} + \sum_{k \ge 0} \binom{n}{k} (-1)^{k-1} \sum_j \binom{n-1}{j} x^{n-1-j} (ky)^j \\
\end{aligned}
\]
在 $\sum_{k \ge 0} \binom{n}{k} (-1)^{k-1} \sum_j \binom{n-1}{j} x^{n-1-j} (ky)^j$ 中：
\[
\begin{aligned}
[y^p] &= \sum_{k \ge 0} \binom{n}{k} (-1)^{k-1} \binom{n-1}{p} x^{n-1-p} k^p \\
由公式：& \ \boxed{x^n = \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} x^{\overline{k}}} \\
 &= \binom{n-1}{p} x^{n-1-p} \sum_{k \ge 0} \binom{n}{k} (-1)^{k-1} \sum_j \genfrac{\{}{\}}{0pt}{} {p}{j} k^{\underline{j}} \\
 &= \binom{n-1}{p} x^{n-1-p} \sum_j \sum_{k \ge 0} \binom{n}{k} \binom{k}{j} (-1)^{k-1} \genfrac{\{}{\}}{0pt}{} {p}{j} j! \\
 由范德蒙 & 德卷积公式：\\
 &= \binom{n-1}{p} x^{n-1-p} \sum_j \binom{0}{j-n} (-1)^{n+1} \genfrac{\{}{\}}{0pt}{} {p}{j} j! \\
 &= 0
\end{aligned}
\]
因此：
\[
\sum_{k \ge 1} \binom{n}{k} (-1)^{k-1} (x+ky)^{n-1} = x^{n-1} \\
\Rightarrow U_n (x, y) = x U_{n-1} (x, y) + \frac{x^n}{n} + y x^{n-1}
\]
令 $R_n (x, y) = \dfrac{U_n (x, y)}{x^n}$，并在等式两边同时除以 $x^n$：
\[
R_n (x, y) = R_{n-1} (x, y) + \dfrac{1}{n} + \frac{y}{x} \\
\Rightarrow R_n (x, y) - R_0 (x, y) = H_n + \dfrac{ny}{x} \\
\xrightarrow{R_0 (x, y) = 0} U_n (x, y) = x^n H_n + n x^{n-1} y
\]

### 6.6
*一位探险者在一座岛上留下一对小兔，如果一个月后小兔长成成年的大兔，又如果每一对成年的大兔每个月产出一对小兔，经过 $n$ 个月之后会有多少对兔子？（两个月后有两对，它们中的一对是新生的）求这个问题与正文中的“蜜蜂树”之间的一个关系.*

一个月后：1 （大兔 × 1）  
两个月后：2 （大兔 × 1 + 小兔 × 1)   
三个月后：3 （大兔 × 2 + 小兔 × 1）  
四个月后：5 （大兔 × 3 + 小兔 × 2）  
$\ \vdots$  
n 个月后：$F_{n+1}$.  

兔子是不断向下繁衍，而文中的蜜蜂树则是不断向上溯源。

### 6.7
*证明卡西尼恒等式*
\[
F_{n+1} F_{n-1} - F_n^2 = (-1)^n \ , \quad n > 0.
\]
*是 $F_{n+k} = F_k F_{n+1} + F_{k-1} F_n$ 的特殊情形，也是*
\[
\begin{aligned}
K_{m+n}(&x_1, \cdots, x_{m+n}) K_k(x_{m+1}, \cdots, x_{m+k}) \\
 = &K_{m+k}(x_1, \cdots, x_{m+k}) K_n(x_{m+1}, \cdots, x_{m+n}) \\
  &+ (-1)^k K_{m-1}(x_1, \cdots, x_{m-1}) K_{n-k-1}(x_{m+k+2}, \cdots, x_{m+n}).
\end{aligned}
\]
*的一个特例.*

1. 在 $F_{n+k} = F_k F_{n+1} + F_{k-1} F_n$ 中，令 $k = 1-n$ 则：
\[
F_1 = F_{1-n} F_{n+1} + F_{-n} F_n \\
利用公式：\boxed{F_{-n} = (-1)^{n-1} F_n \ , \quad n \ 是整数.} \\
则 1 = (-1)^{n-2} F_{n-1} F_{n+1} + (-1)^{n-1} F_n^2 \\
\Rightarrow (-1)^n = F_{n-1} F_{n+1} - F_n^2
\]

2. 令 $m = 1, k = n-1$ ：
\[
K_{1+n}(x_1, \cdots, x_{1+n}) K_{n-1}(x_2, \cdots, x_n) \\
= K_n(x_1, \cdots, x_n) K_n(x_2, \cdots, x_{1+n}) + (-1)^{n-1} \\
利用公式：\boxed{K_n(1, 1, \cdots, 1) = F_{n+1}.} \ 令所有 \ x = 1: \\
F_{n+2} F_n = F_{n+1}^2 + (-1)^{n-1} \\
\xrightarrow{n \to n-1} F_{n+1} F_{n-1} - F_n^2 = (-1)^n
\]

### 6.8
*利用斐波那契数系将65英里/小时转换成千米/小时的近似值.*

由公式：
\[
\boxed{F_{n+1} 千米 \approx F_n 英里}
\]
$$
\because 65 = 55 + 8 + 2 \\
\therefore 89 + 13 + 3 = 105 (千米)
$$

### 6.9
*8平方英里大约等于多少平方千米？*

8 平方英里 $\xrightarrow{F_{n+2}}$ 21 平方千米

### 6.10
*$\phi$ 的连分数表示是什么？*

\[
\begin{aligned}
\because \phi^2 &= \phi + 1 \\
\therefore \phi &= 1 + \frac{1}{\phi} \\
\Rightarrow \phi &= 1 + \dfrac{1}{1 + \dfrac{1}{1 + \dfrac{1}{1 + \dfrac{1}{1 + \ddots}}}}
\end{aligned}
\]

### 6.11
*当 $n$ 是一个非负整数时，带有交错符号的斯特林轮换数三角形的行和 $\sum_k (-1)^k \genfrac{[}{]}{0pt}{} {n}{k}$ 等于什么？*

由公式：
\[
\boxed{x^{\overline{n}} = \sum_k \genfrac{[}{]}{0pt}{} {n}{k} x^k \ , \quad 整数 \ n \ge 0.}
\]
令 $x = -1$：
\[
\sum_k (-1)^k \genfrac{[}{]}{0pt}{} {n}{k} = (-1)^{\overline{n}}
\]

### 6.12
*证明斯特林数有与*
\[
g(n) = \sum_k \binom{n}{k} (-1)^k f(k) \Leftrightarrow f(n) = \sum_k \binom{n}{k} (-1)^k g(k).
\]
*类似的反演规律：*
\[
g(n) = \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} (-1)^k f(k) \Leftrightarrow f(n) = \sum_k \genfrac{[}{]}{0pt}{} {n}{k} (-1)^k g(k).
\]

证明：
\[
\begin{aligned}
& \quad \sum_k \genfrac{[}{]}{0pt}{} {n}{k} (-1)^k g(k) \\
 &= \sum_k \genfrac{[}{]}{0pt}{} {n}{k} (-1)^k \sum_j \genfrac{\{}{\}}{0pt}{} {k}{j} (-1)^j f(j) \\
 &= \sum_j \sum_k \genfrac{[}{]}{0pt}{} {n}{k} \genfrac{\{}{\}}{0pt}{} {k}{j} (-1)^{k+j} f(j) \\
\end{aligned}
\]
由公式：
\[
\boxed{\sum_k \genfrac{[}{]}{0pt}{} {n}{k} \genfrac{\{}{\}}{0pt}{} {k}{m} (-1)^{n-k} = [m=n] \ , \quad 整数 \ m,n \ge 0.}
\]
\[
\begin{aligned}
\therefore & \quad \sum_j \sum_k \genfrac{[}{]}{0pt}{} {n}{k} \genfrac{\{}{\}}{0pt}{} {k}{j} (-1)^{k+j} f(j) \\
 &= \sum_j [j = n] (-1)^{n+j} f(j) \\
 &= f(n)
\end{aligned}
\]

同理，由公式：
\[
\boxed{\sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} \genfrac{[}{]}{0pt}{} {k}{m} (-1)^{n-k} = [m=n] \ , \quad 整数 \ m,n \ge 0.}
\]
可证：
\[
\sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} (-1)^k f(k) = g(n)
\]

### 6.13
*在第2章和第5章里提到过微分算子 $D=\dfrac{d}{dz}$ 以及 $\vartheta = zD$. 我们有：*
\[
\vartheta^2 = z^2 D^2 + zD.
\]
*因为 $\vartheta^2 f(z) = \vartheta z f'(z) = z \dfrac{d}{dz} zf'(z) = z^2 f''(z) + z f'(z)$ ，而此式就是 $(z^2 D^2 + zD) f(z).$ 类似地，可以证明 $\vartheta^3 = z^3 D^3 + 3 z^2 D^2 + zD.$ 证明一般的公式：对所有 $n \ge 0$* :
\[
\begin{aligned}
\vartheta^n &= \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} z^k D^k \\
z^n D^n &= \sum_k \genfrac{[}{]}{0pt}{} {n}{k} (-1)^{n-k} \vartheta^k.
\end{aligned}
\]
*（与在*
\[
\vartheta (\vartheta + b_1 - 1) \cdots (\vartheta + b_n - 1) F = z (\vartheta + a_1) \cdots (\vartheta + a_m) F.
\]
*中相同，这些公式可以用来在形如 $\sum_k \alpha_k z^k f^{(k)} (z)$ 和 $\sum_k \beta_k \vartheta^k f(z)$ 这样的微分表达式之间转换）*

数学归纳法（先证 $\vartheta$ ）：
1. 当 $n=0$ 时：$\vartheta^0 = 1$.  

2. 假设对于 $n$ 成立  

3. 则对于 $n+1$ 时：
\[
\begin{aligned}
\vartheta^{n+1} &= z \frac{d}{dz} \left( \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} z^k D^k \right) \\
 &= z \left(\sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} k z^{k-1} D^k + \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} z^k D^{k+1} \right) \\
 &= \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} k z^{k} D^k + \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} z^{k+1} D^{k+1}
\end{aligned}
\]
由公式：
\[
\boxed{\genfrac{\{}{\}}{0pt}{} {n}{k} = k \genfrac{\{}{\}}{0pt}{} {n-1}{k} + \genfrac{\{}{\}}{0pt}{} {n-1}{k-1}.}
\]
\[
\begin{aligned}
& 又 \ \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} k z^{k} D^k + \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} z^{k+1} D^{k+1} \\
 &= \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} k z^{k} D^k + \sum_{k-1} \genfrac{\{}{\}}{0pt}{} {n}{k-1} z^{k} D^{k} \\
 &= \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} k z^{k} D^k + \sum_{k} \genfrac{\{}{\}}{0pt}{} {n}{k-1} z^{k} D^{k} \\
 &= \sum_k \genfrac{\{}{\}}{0pt}{} {n+1}{k} z^k D^k
\end{aligned}
\]

因此，对于 $n+1$ 也成立  

综上所述，对于 $\vartheta^n$ 公式成立。

由习题6.12的反演定律，可知：对于 $z^n D^n$ 公式也成立。

### 6.14
*证明关于欧拉数的幂恒等式：*  
\[
x^n = \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} \binom{x+k}{n} \ , \ 整数 n \ge 0.
\]

数学归纳法：
1. 当 $n=0$ 时：
\[
\sum_k \genfrac{\langle}{\rangle}{0pt}{} {0}{k} \binom{x+k}{0} = \sum_k [k=0] = 1 = x^0
\]

2. 假设对于 $n$ 等式成立

3. 则对于 $n+1$：
\[
x^{n+1} = x^n \cdot x = \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} \binom{x+k}{n} \cdot x \\
\because (n+1)x = (k+1)(x+k-n) + (n-k)(x+k+1) \\
\therefore x \binom{x+k}{n} = (k+1) \binom{x+k}{n+1} + (n-k) \binom{x+k+1}{n+1}
\]
\[
\begin{aligned}
\Rightarrow x^{n+1} &= \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} \left( (k+1) \binom{x+k}{n+1} + (n-k) \binom{x+k+1}{n+1} \right) \\
 &= \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} (k+1) \binom{x+k}{n+1} + \sum_{k-1} \genfrac{\langle}{\rangle}{0pt}{} {n}{k-1} (n-k+1) \binom{x+k}{n+1} \\
 &= \sum_k \left( \genfrac{\langle}{\rangle}{0pt}{} {n}{k} (k+1) + \genfrac{\langle}{\rangle}{0pt}{} {n}{k-1} (n-k+1) \right) \binom{x+k}{n+1} \\
 &= \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n+1}{k} \binom{x+k}{n+1}
\end{aligned}
\]
因此，对于 $n+1$ 等式也成立  

综上所述，该幂恒等式成立

### 6.15
*对*
\[
x^n = \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} \binom{x+k}{n} \ , \quad 整数 \ n \ge 0.
\]
*取 $m$ 次差分来证明欧拉恒等式：*
\[
m! \genfrac{\{}{\}}{0pt}{} {n}{m} = \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} \binom{k}{n-m}.
\]

用算子表示差分：
\[
E: \ 移位算子 \quad 1: \ 恒等算子 \\
\Delta^n = (E-1)^n = \sum_k \binom{n}{k} E^k (-1)^{n-k} \\
\Rightarrow \Delta^m (x^n) = \sum_k \binom{m}{k} (x+k)^n (-1)^{m-k} \\
由公式：
\boxed{\Delta \left( \binom{x+k}{n} \right) = \binom{x+k}{n-1}.} \\
因此：\Delta^m \left( \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} \binom{x+k}{n} \right) = \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} \binom{x+k}{n-m}
\]
令 $x=0$ ，由公式：
\[
\boxed{m! \genfrac{\{}{\}}{0pt}{} {n}{m} = \sum_k \binom{m}{k} k^n (-1)^{m-k}.}
\]
即证：
\[
m! \genfrac{\{}{\}}{0pt}{} {n}{m} = \sum_k \genfrac{\langle}{\rangle}{0pt}{} {n}{k} \binom{k}{n-m}.
\]

### 6.16
*当 $k$ 和 $n$ 取遍所有整数的集合时，双重递归式*
\[
\begin{aligned}
A_{n,0} &= a_n [n \ge 0] \ ; \quad A_{0,k} = 0 \ , \quad k > 0 \\
A_{n,k} &= k A_{n-1,k} + A_{n-1,k-1} \ , \quad k, n \ 是整数.
\end{aligned}
\]
*的通解是什么？*

注意到 $A_{n, k}$ 的公式和第二类斯特林数非常相似：
\[
\boxed{第二类斯特林数：\genfrac{\{}{\}}{0pt}{} {n}{k} = k \genfrac{\{}{\}}{0pt}{} {n-1}{k} + \genfrac{\{}{\}}{0pt}{} {n-1}{k-1}.}
\]
同时又关注到 $A_{n, 0} = a_n [n \ge 0]$，因此有：
\[
A_{n, k} = \sum_{j \ge 0} a_j \genfrac{\{}{\}}{0pt}{} {n-j}{k}
\]
当 $k=0$ 时，只有当 $j = n$ 时，$\displaystyle\genfrac{\{}{\}}{0pt}{} {n-j}{k} = \genfrac{\{}{\}}{0pt}{} {0}{0} = 1$

### 6.18
*证明斯特林多项式满足：*
\[
(x+1) \sigma_n (x+1) = (x-n) \sigma_n (x) + x \sigma_{n-1} (x).
\]

证明：由斯特林多项式的定义：
\[
\boxed{\sigma_n(x) = \displaystyle\frac{\genfrac{[}{]}{0pt}{} {x}{x-n}}{x (x-1) \cdots (x-n)}.}
\]
原式可化为：
\[
\frac{\genfrac{[}{]}{0pt}{} {x+1}{x+1-n}} {x \cdots (x+1-n)} = \frac{\genfrac{[}{]}{0pt}{} {x}{x-n}} {x \cdots (x-n+1)} + \frac{\genfrac{[}{]}{0pt}{} {x}{x+1-n}} {(x-1) \cdots (x-n+1)} \\
\Rightarrow \genfrac{[}{]}{0pt}{} {x+1}{x+1-n} = \genfrac{[}{]}{0pt}{} {x}{x-n} + x \genfrac{[}{]}{0pt}{} {x}{x+1-n}
\]
由公式：
\[
\boxed{\genfrac{[}{]}{0pt}{} {n}{k} = (n-1) \genfrac{[}{]}{0pt}{} {n-1}{k} + \genfrac{[}{]}{0pt}{} {n-1}{k-1}.}
\]
即证

### 6.19
*证明广义斯特林数满足：*
\[
\begin{aligned}
& \sum_{k=0}^n \genfrac{\{}{\}}{0pt}{} {x+k}{x} \genfrac{[}{]}{0pt}{} {x}{x-n+k} (-1)^k \bigg/ \binom{x+k}{n+1} = 0 \ , \quad 整数 \ n > 0 \\
& \sum_{k=0}^n \genfrac{[}{]}{0pt}{} {x+k}{x} \genfrac{\{}{\}}{0pt}{} {x}{x-n+k}  (-1)^k \bigg/ \binom{x+k}{n+1} = 0 \ , \quad 整数 \ n > 0.
\end{aligned}
\]

1. 由公式：
\[
\boxed{\genfrac{\{}{\}}{0pt}{} {n}{m} = (-1)^{n-m+1} \frac{n!}{(m-1)!} \sigma_{n-m} (-m) \\
\genfrac{[}{]}{0pt}{} {n}{m} = \frac{n!}{(m-1)!} \sigma_{n-m} (n).}
\]
原式可化为：
\[
\begin{aligned}
& \quad \sum_{k=0}^n \dfrac{(-1)^{2k+1} (x+k)! \ x! \ \sigma_{k} (-x) \ \sigma_{n-k} (x) \ (n+1)! (x+k-n-1)!}{(x-1)! (x-n+k-1)! (x+k)!} \\
&= \sum_{k=0}^n (-x) (n+1)! \ \sigma_{k} (-x) \ \sigma_{n-k} (x)
\end{aligned}
\]
由斯特林卷积公式：
\[
\boxed{rs \sum_{k=0}^n \sigma_k(r+tk) \ \sigma_{n-k}(s+t(n-k)) = (r+s) \ \sigma_n(r+s+tn).}
\]
令 $r = -x \ , \ s = x \ , \ t = 0$：
\[
(-x^2) \sum_{k=0}^n \sigma_k(-x) \ \sigma_{n-k}(x) = 0 \\
\Rightarrow \sum_{k=0}^n (-x) (n+1)! \ \sigma_{k} (-x) \ \sigma_{n-k} (x) = 0
\]  

即证原式等于零  

2. 原式可化为：
\[
\begin{aligned}
& \quad \sum_{k=0}^n \dfrac{(x+k)! \ \sigma_k(x+k) \ (-1)^{n+1} \ x! \ \sigma_{n-k} (-x+n-k) \ (n+1)! \ (x+k-n-1)!}{(x-1)! \ (x-n+k-1)! \ (x+k)!} \\
&= \sum_{k=0}^n x \ \sigma_k (x+k) \ (-1)^{n+1} \sigma_{n-k}(-x+n-k) \  (n+1)!
\end{aligned}
\]
令 $r = x \ , \ s = -x \ , \ t = 1$：
\[
(-x^2) \sum_{k=0}^n \sigma_k(x + k) \sigma_{n-k} (-x + n - k) = 0 \\
\Rightarrow \sum_{k=0}^n x \ \sigma_k (x+k) \ (-1)^{n+1} \sigma_{n-k}(-x+n-k) \  (n+1)! = 0
\]

即证原式等于零  

### 6.20
*求出 $\sum_{k=1}^n H_k^{(2)}$ 的封闭形式.*

\[
\begin{aligned}
\because H_n^{(2)} &= \dfrac{1}{1^2} + \dfrac{1}{2^2} + \cdots + \dfrac{1}{n^2} = \sum_{k=1}^n \dfrac{1}{k^2} \\
\therefore \sum_{k=1}^n H_k^{(2)} &= \sum_{k=1}^n \sum_{j=1}^k \dfrac{1}{j^2} = \sum_{j=1}^n \sum_{k=j}^n \dfrac{1}{j^2} \\
 &= \sum_{j=1}^n \dfrac{n-j+1}{j^2} \\
 &= (n+1) H_n^{(2)} - H_n
\end{aligned}
\]

### 6.23
*当按照 $z$ 的幂来展开时，方程 $\dfrac{z}{e^z - 1} = \sum_{n \ge 0} B_n \dfrac{z^n}{n!}$ 就给出 $z / (e^z - 1)$ 的系数. $\quad z / (e^z + 1)$ 的系数是什么？*  
*提示：考虑恒等式 $(e^z+1)(e^z-1)=e^{2z}-1$.*

由公式：
\[
\boxed{\dfrac{z}{e^z-1} = \sum_{n \geqslant 0} B_n \dfrac{z^n}{n!}.}
\]
因此：
\[
\dfrac{2z}{e^{2z} - 1} = \sum_{n \geqslant 0} B_n \dfrac{(2z)^n}{n!}
\]

\[
\because (e^z+1)(e^z-1) = e^{2z}-1 \\
\therefore \dfrac{z}{e^z+1} - \dfrac{z}{e^z-1} = \dfrac{-2z}{e^{2z} - 1} \\
\Rightarrow \dfrac{z}{e^z+1} = \sum_{n \geqslant 0} B_n \dfrac{(1-2^n) z^n}{n!}
\]

### 6.25
*方程 $\dfrac{1}{100} \left( \dfrac{1}{1} + \dfrac{1}{2} + \dfrac{1}{3} + \cdots + \dfrac{1}{n} \right) = \dfrac{H_n}{100}.$ 证明了，蠕虫在某个时刻 $N$ 时最终必将到达橡皮带的终点。于是，必定会有第一个时间 $n$ ，它在 $n$ 分钟后比在 $n-1$ 分钟之后更加接近于终点。证明 $n < \dfrac{1}{2} N$.*

蠕虫每分钟都在前进，并且最终必将到达终点，因此，题目中的更加接近终点意指它的实际距离  

在第 $n$ 分钟后，它爬过橡皮筋的部分是 $\dfrac{H_n}{100}$ （$\%$）  
而第 $n$ 分钟后，橡皮筋实际长度为 $100n$ ($cm$)  

因此有：
\[
100n - n H_n < 100(n-1) - (n-1) H_n \\
n H_n - (n-1) H_n > 100
\]
由公式：
\[
\boxed{\sum_{0 \leqslant k < n} H_k = n H_n - n.}
\]

\[
\Rightarrow n H_n - (n-1) H_n = H_{n-1} + 1 > 100
\]

再由 $H_n$ 的近似公式：
\[
\boxed{H_n = \ln{n} + \gamma + \dfrac{1}{2n} - \dfrac{1}{12n^2} + \dfrac{\varepsilon_n}{120n^4} \ , \quad 0 < \varepsilon_n < 1.}
\]
得出
\[
n \approx e^{99}
\]

### 6.26
*利用分部求和法计算 $S_n = \sum_{k=1}^n H_k / k.$ 提示：也考虑有关的和式 $\sum_{k=1}^n H_{k-1} / k$.*

令 $u(x) = H_{x-1} \ , \ \Delta v(x) = \dfrac{1}{x}$：
\[
\begin{aligned}
\sum_{k=1}^n \dfrac{H_{k-1}}{k} &= \sum_{1}^{n+1} u(x) \Delta v(x) \delta x \\
 &= u(x) v(x) \left. \right|_1^{n+1} - \sum_{1}^{n+1} v(x+1) \Delta u(x) \delta x \\
 &= H_n^2 - \sum_{k=1}^n \dfrac{H_k}{k} \\
\Rightarrow 2 \sum_{k=1}^n \dfrac{H_k}{k} - H_n^2 &= \sum_{k=1}^n \dfrac{H_k}{k} - \sum_{k=1}^n \dfrac{H_{k-1}}{k} = \sum_{k=1}^n \dfrac{1}{k^2} \\
\sum_{k=1}^n \dfrac{H_k}{k} &= \dfrac{H_n^{(2)} + H_n^2}{2}
\end{aligned}
\]

### 6.27
*证明关于斐波那契数的 $\gcd$ 法则：$\gcd{(F_m, F_n)} = F_{\gcd{(m, n)}}$.*

利用公式：
\[
\boxed{F_{n+k} = F_k F_{n+1} + F_{k-1} F_n.}
\]

不妨设 $m > n$：  

令 $k = m-n$ ：
\[
F_m = F_{m-n} F_{n+1} + F_{m-n-1} F_n \\
\Rightarrow F_m \equiv F_{m-n} F_{n+1} \pmod{F_n}
\]

\[
\begin{aligned}
\gcd{(F_m, F_n)} &= \gcd{((F_m \bmod F_n), F_n)} \\
 &= \gcd{((F_{m-n} F_{n+1} \bmod F_n), F_n)} \\
 &= \gcd{((F_{m-n} F_{n+1}), F_n)}
\end{aligned}
\]
下证：$F_{n+1} \ \bot \ F_n$（互素）
\[
假设 \ a = \gcd{(F_{n+1}, F_n)} > 1 \\
\because F_{n+1} = F_n + F_{n-1} \\
又 \ a \setminus F_{n+1} \ 且 \ a \setminus F_n （整除）\\
\therefore a \setminus F_{n-1} \\
\vdots \\
a \setminus F_1 = 1 \\
与 \ a > 1 \ 矛盾
\]
因此： $F_{n+1} \ \bot \ F_n$  

利用算术基本定理，可以证明：
\[
\gcd{((F_{m-n} F_{n+1}), F_n)} = \gcd{(F_{m-n}, F_n)} \ , \quad 当 \ F_{n+1} \ \bot \ F_n
\]
（具体证法可以参见习题4.38[link](https://blog.csdn.net/qq_46013251/article/details/113815562)）  

\[
\begin{aligned}
\Rightarrow & \ \gcd{(F_m, F_n)} \\
&= \gcd{(F_{m-n}, F_n)} \\
& \quad \vdots \\
&= \gcd{(F_{m-n \lfloor \frac{m}{n} \rfloor}, F_n)} \\
&= \gcd{(F_{m \bmod n}, F_n)} \\
& \quad \vdots \\
&= F_{\gcd{(m, n)}}
\end{aligned}
\]

### 6.28
*卢卡斯数 $L_n$ 定义成 $F_{n+1} + F_{n-1}$. 按照 $F_{2n} = F_n F_{n+1} + F_{n-1} F_n$ ，我们就有 $F_{2n} = F_n L_n$. 这里是前几个卢卡斯数值的表：*  
n|0|1|2|3|4|5|6|7|8|9|10|11|12|13
--|--|--|--|--|--|--|--|--|--|--|--|--|--|--|--
$L_n$|2|1|3|4|7|11|18|29|47|76|123|199|322|521
*a. 利用成套方法证明：一般递归式*  
\[
Q_0 = \alpha \ ; \quad Q_1 = \beta \ ; \quad Q_n = Q_{n-1} + Q_{n-2} \ , \quad n > 1
\]
*的解 $Q_n$ 可以用 $F_n$ 以及 $L_n$ 来表示.*  
*b. 对 $L_n$ 求一个用 $\phi$ 以及 $\hat{\phi}$ 来表示的封闭形式.*

a. 可以设 $Q_n = A(n) \alpha + B(n) \beta$ ：
\[
不妨令 \ \alpha = 1 \ , \ \beta = 0 \\
则 \ A(n) = A(n-1) + A(n-2) \\
同样的，令 \ \alpha = 0 \ , \alpha = 1 \\
得到：B(n) = B(n-1) + B(n-2) \\
因此 \ A(n) \ 与 \ B(n) \ 都与 \ F_n \ 相关 \\
又因为：Q_0 = \alpha \ , \ Q_1 = \beta \\
因此有：
\begin{cases}
A(0) = 1 \\
A(1) = 0
\end{cases}
以及
\begin{cases}
B(0) = 0 \\
B(1) = 1
\end{cases} \\
综上：Q_n = \alpha F_{n-1} + \beta F_n
\]

b.
\[
\because F_n = \dfrac{1}{\sqrt{5}} (\phi^n - \hat{\phi}^n) \\
\therefore F_{2n} = \dfrac{1}{\sqrt{5}} (\phi^{2n} - \hat{\phi}^{2n}) \\
\Rightarrow L_n = \dfrac{F_{2n}}{F_n} = \phi^n + \hat{\phi}^n
\]

### 6.29
*证明关于连项式的欧拉恒等式，即方程：*
\[
\begin{aligned}
K_{m+n}(&x_1, \cdots, x_{m+n}) K_k(x_{m+1}, \cdots, x_{m+k}) \\
 = &K_{m+k}(x_1, \cdots, x_{m+k}) K_n(x_{m+1}, \cdots, x_{m+n}) \\
  &+ (-1)^k K_{m-1}(x_1, \cdots, x_{m-1}) K_{n-k-1}(x_{m+k+2}, \cdots, x_{m+n}).
\end{aligned}
\]

数学归纳法：  
1. 基础情况：当 $k=0$ 时：
\[
\begin{aligned}
要证：K_{m+n}(&x_1, \cdots, x_{m+n}) \\
 = &K_{m}(x_1, \cdots, x_{m}) K_n(x_{m+1}, \cdots, x_{m+n}) \\
  &+ K_{m-1}(x_1, \cdots, x_{m-1}) K_{n-1}(x_{m+2}, \cdots, x_{m+n}).
\end{aligned}
\]
用摩尔斯码的类比来看：第一个乘积得到 $K_{m+n}$ 项，其中在位置 $[m, m+1]$ 没有划，而第二个乘积在该位置有一划。

当 $k=1$ 时：
\[
\begin{aligned}
要证：K_{m+n}(&x_1, \cdots, x_{m+n}) \ (x_{m+1}) \\
 = &K_{m+1}(x_1, \cdots, x_{m+1}) K_n(x_{m+1}, \cdots, x_{m+n}) \\
  &+ (-1) K_{m-1}(x_1, \cdots, x_{m-1}) K_{n-2}(x_{m+3}, \cdots, x_{m+n}). \\
即证：K_m(&x_1, \cdots, x_m) K_n(x_{m+1}, \cdots, x_{m+n}) \ (x_{m+1}) \\ +
& K_{m-1}(x_1, \cdots, x_{m-1}) K_{n-1}(x_{m+2}, \cdots, x_{m+n}) \ (x_{m+1}) \\
 &= K_{m+1}(x_1, \cdots, x_{m+1}) K_n(x_{m+1}, \cdots, x_{m+n}) \\
  & \phantom{+} -  K_{m-1}(x_1, \cdots, x_{m-1}) K_{n-2}(x_{m+3}, \cdots, x_{m+n}). \\
即证：K_n(&x_{m+1}, \cdots, x_{m+n}) \left(K_{m+1}(x_1, \cdots, x_{m+1}) - K_m(x_1, \cdots, x_m) (x_{m+1}) \right) \\
 = & K_{m-1}(x_1, \cdots, x_{m-1}) \left(K_{n-1}(x_{m+2}, \cdots, x_{m+n}) \ (x_{m+1}) + K_{n-2}(x_{m+3}, \cdots, x_{m+n}) \right) \\
即证：K_n(&x_{m+1}, \cdots, x_{m+n}) K_{m-1}(x_1, \cdots, x_{m-1}) \\
 = & K_{m-1}(x_1, \cdots, x_{m-1}) K_n (x_{m+1}, \cdots, x_{m+n})
\end{aligned}
\]

2. 假设对于 $k-1 \ , \ k$ 等式成立  

3. 则对于 $k+1$ ：
\[
\begin{aligned}
K_{m+n}(&x_1, \cdots, x_{m+n}) K_{k+1}(x_{m+1}, \cdots, x_{m+k+1}) \\
 =& K_{m+n}(x_1, \cdots, x_{m+n}) K_{k}(x_{m+1}, \cdots, x_{m+k})  (x_{m+k+1}) \\
  & + K_{m+n}(x_1, \cdots, x_{m+n}) K_{k-1} (x_{m+1}, \cdots, x_{m+k-1}) \\
 =& K_{m+k}(x_1, \cdots, x_{m+k}) K_n(x_{m+1}, \cdots, x_{m+n}) (x_{m+k+1}) \\
  & + (-1)^k K_{m-1}(x_1, \cdots, x_{m-1}) K_{n-k-1}(x_{m+k+2}, \cdots, x_{m+n}) (x_{m+k+1}) \\
  & \phantom{1} K_{m+k-1} (x_1, \cdots, x_{m+k-1}) K_n(x_{m+1}, \cdots, x_{m+n}) \\
  & \phantom{11} + (-1)^{k-1} K_{m-1} (x_1, \cdots, x_{m-1}) K_{n-k} (x_{m+k+1}, \cdots, x_{m+n}) \\
  =& K_n(x_{m+1}, \cdots, x_{m+n}) K_{m+k+1}(x_1, \cdots, x_{m+k+1}) \\
   &+ (-1)^{k+1} K_{m-1} (x_1, \cdots, x_{m-1}) K_{n-k-2}(x_{m+k+3}, \cdots, x_{m+n})
\end{aligned}
\]
因此，对于 $k+1$ 等式也成立  

综上所述，恒等式成立

### 6.30
*推广 $K_n(x_1, \cdots, x_{n-1}, x_n+y) = K_n(x_1, \cdots, x_{n-1}, x_n) + K_{n-1}(x_1, \cdots, x_{n-1})y.$ ，当 $1 \leqslant m \leqslant n$ 时，对增长的连项式 $K(x_1, \cdots, x_{m-1}, x_m+y, x_{m+1}, \cdots, x_n)$ 求出表达式.*

先证明：
\[
\begin{aligned}
& \quad K_n(x_1, \cdots, x_{n-1}, x_n + y) \\
 &= K_{n-1}(x_1, \cdots, x_{n-1}) (x_n + y) + K_{n-2} (x_1, \cdots, x_{n-2}) \\
 &= y K_{n-1} (x_1, \cdots, x_{n-1}) + K_n (x_1, \cdots, x_n)
\end{aligned}
\]

推广：
\[
\begin{aligned}
& \quad K(x_1, \cdots, x_{m-1}, x_m+y, x_{m+1}, \cdots, x_n) \\
 &= K(x_1, \cdots, x_m+y) K(x_{m+1}, \cdots, x_n) \\
  & \quad + K(x_1, \cdots, x_{m-1}) K(x_{m+2}, \cdots, x_n) \\
 &= (y K(x_1, \cdots, x_{m-1}) + K(x_1, \cdots, x_m)) K(x_{m+1}, \cdots, x_n) \\
  & \quad + K(x_1, \cdots, x_{m-1}) K(x_{m+2}, \cdots, x_n) \\
 &= yK(x_1, \cdots, x_{m-1}) K(x_{m+1}, \cdots, x_n) + K(x_1, \cdots, x_n)
\end{aligned}
\]

### 6.31
*对于用下降幂给出的上升幂的表示法：*
\[
x^{\overline{n}} = \sum_k \genfrac{|}{|}{0pt}{} {n}{k} x^{\underline{k}} \ , \quad 整数 \ n \geqslant 0.
\]
*中的系数 $\displaystyle\genfrac{|}{|}{0pt}{} {n}{k}$ 求出封闭形式.（例如 $x^{\overline{4}} = x^{\underline{4}} + 12 x^{\underline{3}} + 36 x^{\underline{2}} + 24 x^{\underline{1}}$ ，从而 $\displaystyle\genfrac{|}{|}{0pt}{} {4}{2} = 36.$）*

由公式：
\[
\boxed{x^n = \sum_k \genfrac{\{}{\}}{0pt}{} {n}{k} x^{\underline{k}}\\
  x^{\overline{n}} = \sum_k \genfrac{[}{]}{0pt}{} {n}{k} x^k.}
\]

\[
\Rightarrow x^{\overline{n}} = \sum_k \genfrac{[}{]}{0pt}{} {n}{k} \sum_j \genfrac{\{}{\}}{0pt}{} {k}{j} x^{\underline{j}}
\]
则：
\[
[x^{\underline{k}}] = \genfrac{|}{|}{0pt}{} {n}{k} = \sum_{j \geqslant k} \genfrac{[}{]}{0pt}{} {n}{j} \genfrac{\{}{\}}{0pt}{} {j}{k}
\]
由公式：
\[
\boxed{\binom{n}{m}(n-1)^{\underline{n-m}} = \sum_k \genfrac{[}{]}{0pt}{} {n}{k} \genfrac{\{}{\}}{0pt}{} {k}{m}.}
\]
所以：
\[
\genfrac{|}{|}{0pt}{} {n}{k} = \binom{n}{k} (n-1)^{\underline{n-k}}
\]

### 6.32
*在第5章里，我们用两种方法展开递归式 $\displaystyle\binom{n}{k} = \binom{n-1}{k} + \binom{n-1}{k-1}$ ，得到了公式：*
\[
\sum_{k \leqslant m} \binom{n+k}{k} = \binom{n+m+1}{m} \text{和} \sum_{0 \leqslant k \leqslant m} \binom{k}{n} = \binom{m+1}{n+1}.
\]
*当展开类似的递归式 $\displaystyle\genfrac{\{}{\}}{0pt}{} {n}{k} = k \genfrac{\{}{\}}{0pt}{} {n-1}{k} + \genfrac{\{}{\}}{0pt}{} {n-1}{k-1}$ 时，会出现什么样的恒等式？*

仿照第5章的例子：
\[
\begin{aligned}
& \quad \genfrac{\{}{\}}{0pt}{} {5}{3} \\
&= 3 \genfrac{\{}{\}}{0pt}{} {4}{3} + \genfrac{\{}{\}}{0pt}{} {4}{2} \\
&= 3 \genfrac{\{}{\}}{0pt}{} {4}{3} + 2 \genfrac{\{}{\}}{0pt}{} {3}{2} + \genfrac{\{}{\}}{0pt}{} {3}{1} \\
&= 3 \genfrac{\{}{\}}{0pt}{} {4}{3} + 2 \genfrac{\{}{\}}{0pt}{} {3}{2} + 1 \genfrac{\{}{\}}{0pt}{} {2}{1} + \genfrac{\{}{\}}{0pt}{} {2}{0}
\end{aligned}
\]
因此，有：
\[
\sum_{k \leqslant m} k \genfrac{\{}{\}}{0pt}{} {n+k}{k} = \genfrac{\{}{\}}{0pt}{} {m+n+1}{m}
\]

由：
\[
\begin{aligned}
& \quad \genfrac{\{}{\}}{0pt}{} {5}{3} \\
&= 3 \genfrac{\{}{\}}{0pt}{} {4}{3} + \genfrac{\{}{\}}{0pt}{} {4}{2} \\
&= 3^2 \genfrac{\{}{\}}{0pt}{} {3}{3} + 3 \genfrac{\{}{\}}{0pt}{} {3}{2} + \genfrac{\{}{\}}{0pt}{} {4}{2} \\
&= 3^3 \genfrac{\{}{\}}{0pt}{} {2}{3} + 3^2 \genfrac{\{}{\}}{0pt}{} {2}{2} + 3 \genfrac{\{}{\}}{0pt}{} {3}{2} + \genfrac{\{}{\}}{0pt}{} {4}{2} \\
&= 3^4 \genfrac{\{}{\}}{0pt}{} {1}{3} + 3^3  \genfrac{\{}{\}}{0pt}{} {1}{2} + 3^2 \genfrac{\{}{\}}{0pt}{} {2}{2} + 3 \genfrac{\{}{\}}{0pt}{} {3}{2} + \genfrac{\{}{\}}{0pt}{} {4}{2} \\
&= 3^5 \genfrac{\{}{\}}{0pt}{} {0}{3} + 3^4 \genfrac{\{}{\}}{0pt}{} {0}{2} + 3^3 \genfrac{\{}{\}}{0pt}{} {1}{2} + 3^2 \genfrac{\{}{\}}{0pt}{} {2}{2} + 3 \genfrac{\{}{\}}{0pt}{} {3}{2} + \genfrac{\{}{\}}{0pt}{} {4}{2}
\end{aligned}
\]
得知：
\[
\sum_{0 \leqslant k \leqslant n} \genfrac{\{}{\}}{0pt}{} {k}{m} (m+1)^{n-k} = \genfrac{\{}{\}}{0pt}{} {n+1}{m+1}
\]

### 6.33
*$\displaystyle\genfrac{\{}{\}}{0pt}{} {n}{2} = (2^{n-1} - 1) [n > 0] \ , \ \ \genfrac{[}{]}{0pt}{} {n}{2} = (n-1)! \ H_{n-1} [n > 0]. \quad$ 对下一个情形 $\displaystyle\genfrac{\{}{\}}{0pt}{} {n}{3}$ 和 $\displaystyle\genfrac{[}{]}{0pt}{} {n}{3}$ ，其封闭形式（不包含斯特林数）是什么？*

由公式：
\[
\boxed{m! \genfrac{\{}{\}}{0pt}{} {n}{m} = \sum_k \binom{m}{k} k^n (-1)^{m-k} \ .}
\]

因此：
\[
\begin{aligned}
3! \genfrac{\{}{\}}{0pt}{} {n}{3} &= \sum_k \binom{3}{k} k^n (-1)^{3-k} \\
\Rightarrow \genfrac{\{}{\}}{0pt}{} {n}{3} &= \dfrac{3 - 3 \cdot 2^n + 3^n}{6} \\
 &= \dfrac{1}{2} - 2^{n-1} + \dfrac{3^n}{6}
\end{aligned}
\]

由公式：
\[
\boxed{\genfrac{[}{]}{0pt}{} {n+1}{m+1} = \dfrac{n! \ \sum_{k=0}^n \genfrac{[}{]}{0pt}{} {k}{m}}{k!} \ .}
\]

因此：
\[
\begin{aligned}
\genfrac{[}{]}{0pt}{} {n}{3} &= \dfrac{(n-1)! \ \sum_{k=0}^{n-1} \genfrac{[}{]}{0pt}{} {k}{2}}{k!} \\
&= (n-1)! \sum_{k=1}^{n-1} \dfrac{H_{k-1}}{k} \\
\end{aligned}
\]

由习题 6.26 ：
\[
\begin{aligned}
&= (n-1)! (H_{n-1}^2 - S_{n-1}) \\
&= \dfrac{1}{2} (n-1)! \ (H_{n-1}^2 - H_{n-1}^{(2)})
\end{aligned}
\]

### 6.34
*如果假设基本递推关系*
\[
\genfrac{<}{>}{0pt}{} {n}{k} = (k+1) \genfrac{<}{>}{0pt}{} {n-1}{k} + (n-k) \genfrac{<}{>}{0pt}{} {n-1}{k-1} \ , \quad 整数 \ n > 0.
\]
*对所有整数 $k$ 和 $n$ 都成立，又如果对所有 $k < 0$ 都有 $\displaystyle\genfrac{<}{>}{0pt}{} {n}{k} = 0$ ，那么 $\displaystyle\genfrac{<}{>}{0pt}{} {-1}{k}$ 和 $\displaystyle\genfrac{<}{>}{0pt}{} {-2}{k}$ 等于什么？*

由公式：
\[
\boxed{\genfrac{<}{>}{0pt}{} {n}{m} = \sum_{k=0}^m \binom{n+1}{k} (m+1-k)^n (-1)^k \ .}
\]

因此：
\[
\begin{aligned}
\genfrac{<}{>}{0pt}{} {-1}{k} &= \sum_{j=0}^k \binom{0}{j} (k+1-j)^{-1} (-1)^j \\
 &= \dfrac{1}{k+1}
\end{aligned}
\]

同理：
\[
\begin{aligned}
\genfrac{<}{>}{0pt}{} {-2}{k} &= \sum_{j=0}^k \binom{-1}{j} (k+1-j)^{-2} (-1)^j \\
 &= \sum_{j=0}^k (k+1-j)^{-2} \quad (上指标反转得到) \\
 &= H_{k+1}^{(2)}
\end{aligned}
\]

### 6.35
*证明，对每个 $\varepsilon > 0$ 都存在一个整数 $n > 1$ （与 $\varepsilon$ 有关），使得 $H_n \bmod 1 < \varepsilon$.*

\[
H_n \bmod 1 = H_n - \lfloor H_n \rfloor \\
要让 \ H_n - \lfloor H_n \rfloor < \varepsilon \\
而当 \ \lfloor H_n \rfloor > \lfloor H_{n-1} \rfloor \ 时： \\
\because H_{n-1} < \lfloor H_{n-1} \rfloor + 1 = \lfloor H_n \rfloor \\
\therefore H_n - \lfloor H_n \rfloor < H_n - H_{n-1} = \frac{1}{n} \\
只要让此时：\frac{1}{n} < \varepsilon \\
即：n > \frac{1}{\varepsilon}
\]
因此，$n$ 满足：$n > \dfrac{1}{\varepsilon} 并且 \lfloor H_n \rfloor > \lfloor H_{n-1} \rfloor$.

### 6.37
*用调和数表示 $\sum_{k=1}^{mn} (k \bmod m) / k (k+1)$ ，假设 $m$ 和 $n$ 是正整数，当 $n \to \infty$ 时，其极限值是什么？*

\[
\begin{aligned}
& \ \sum_{k=1}^{mn} \dfrac{(k \bmod m)}{k (k+1)} \\
&= \sum_{k=1}^{mn} (k \bmod m) \left( \dfrac{1}{k} - \dfrac{1}{k+1} \right) \\
&= 1 (\frac{1}{1} - \frac{1}{2}) + 2 (\frac{1}{2} - \frac{1}{3}) + \cdots + (m-1) (\frac{1}{m-1} - \frac{1}{m}) \\
& \phantom{=} + 1 (\frac{1}{m+1} - \frac{1}{m+2}) + 2 (\frac{1}{m+2} - \frac{1}{m+3}) + \cdots + (m-1) (\frac{1}{2m-1} - \frac{1}{2m}) \\
& \phantom{=} + \cdots \\
& \phantom{=} + 1 (\frac{1}{(n-1)m + 1} - \frac{1}{(n-1)m + 2}) + \cdots + (m-1) (\frac{1}{nm-1} - \frac{1}{nm}) \\[5pt]
&= \left( \frac{1}{1} + \frac{1}{2} + \cdots + \frac{1}{m-1} + \frac{1}{m} \right) - 1 \\
& \phantom{=} + \left( \frac{1}{m+1} + \frac{1}{m+2} + \cdots + \frac{1}{2m-1} + \frac{1}{2m} \right) - \frac{1}{2} \\
& \phantom{=} + \cdots \\
& \phantom{=} + \left( \frac{1}{(n-1)m + 1} + \frac{1}{(n-1)m + 2} + \cdots + \frac{1}{nm-1} + \frac{1}{nm} \right) - \frac{1}{n} \\[5pt]
&= H_{nm} - H_n
\end{aligned}
\]

由 $H_n$ 的表达式：
\[
\boxed{H_n = \ln{n} + \gamma + \frac{1}{2n} - \frac{1}{12 n^2} + \frac{\varepsilon_n}{120 n^4} \quad 0 < \varepsilon_n < 1 \ .}
\]

当 $n \to \infty$ 时：  
\[
H_{mn} - H_n = \ln{mn} - \ln{n} = \ln{m}
\]

### 6.38
*求不定的和式 $\displaystyle\sum \binom{r}{k} (-1)^k H_k \delta k$.*

由公式：
\[
\boxed{\sum_{k \leqslant m} \binom{r}{k} (-1)^k = (-1)^m \binom{r-1}{m} \ .}
\]

所以：
\[
\begin{aligned}
& \ \sum \binom{r}{k} (-1)^k H_k \delta k \\
&= (-1)^{k-1} \binom{r-1}{k-1} H_k - \sum (-1)^{k} \binom{r-1}{k} \dfrac{1}{k+1} \delta k \\
&= (-1)^{k-1} \binom{r-1}{k-1} H_k - \dfrac{1}{r} \sum (-1)^k \binom{r}{k+1} \delta k \\
&= (-1)^{k-1} \binom{r-1}{k-1} H_k - \dfrac{(-1)^{k-1} \binom{r-1}{k}}{r} + C
\end{aligned}
\]

### 6.39
*用 $n$ 和 $H_n$ 来表示 $\sum_{k=1}^n H_k^2$.*

\[
\begin{aligned}
\sum_{k=1}^n H_k^2 &= \sum_{k=1}^n \sum_{j=1}^k \frac{1}{j} H_k \\
 &= \sum_{j=1}^n \sum_{k=j}^n \frac{1}{j} H_k
\end{aligned}
\]
由公式：
\[
\boxed{\sum_{0 \leqslant k < n} H_k = nH_n - n.}
\]

\[
\begin{aligned}
原式 &= \sum_{j=1}^n \frac{1}{j} ((n+1)H_{n+1} - jH_j - n - 1 + j) \\
&= (n+1)H_{n+1}H_n - (n+1)H_{n+1} + (n+1) - (n+1)H_n + n \\
&= (n+1) H_n^2 - (2n+1) H_n + 2n
\end{aligned}
\]

### 6.41
*当 $n$ 是整数（有可能是负的）时，将和式 $\displaystyle\sum_k \binom{\lfloor (n+k) / 2 \rfloor}{k}$ 计算成封闭形式.*

不妨记 $S_n = \sum_k \binom{\lfloor (n+k) / 2 \rfloor}{k}$
\[
\begin{aligned}
\because S_{n+1} &= \sum_k \binom{\lfloor (n+k+1) / 2 \rfloor}{k} \\
 &= \sum_{k-1} \binom{\lfloor (n+k) / 2 \rfloor}{k-1} \\
 &= \sum_k \binom{\lfloor (n+k) / 2 \rfloor}{k-1} \\
\therefore S_n + S_{n+1} &= \sum_k \binom{\lfloor (n+k) / 2 \rfloor + 1}{k} \\
 &= S_{n+2}
\end{aligned} \\
又 S_1 = 1 + 1 = 2 = F_3 \\
S_2 = 3 = F_4 \\
因此 S_n = F_{n+2}
\]

### 6.42
*如果 $S$ 是一个整数的集合，设 $S + 1$ 是 “平移集”  $\{ x+1 | x \in S \}$. $\{ 1, 2, \cdots, n \}$ 有多少个子集有如下性质：$S \cup (S+1) = \{ 1, 2, \cdots, n+1 \}$？*

当 $n = 1$ 时，易得：$S_1 = 1$  
当 $n = 2$ 时，$S_2 = 1$  
当 $n = 3$ 时，$S_3 = 2$  
可以猜测 $S_n$ 和 $F_n$ 有关系：$S_n = F_n$  

数学归纳法证明：

1. 基础情况：$n = 1$ 时，$S_1 = 1 = F_1$
 $n = 2$ 时， $S_2 = 1 = F_2$
2. 假设 $\{ 1, 2, \cdots, n \}$ 有 $S_n$ 个子集具有此性质
 对于 $\{ 1, 2, \cdots, n+1 \}$ 有 $S_{n+1}$ 个子集具有性质
3. 则对于 $\{ 1, 2, \cdots, n+2 \}$ 具有此性质的子集个数为：
在 $S_n$ 的每一种取法上加上 $n+2$ 则：$S \cup (S+1) = \{ 1, 2, \cdots, n+3 \}$
在 $S_{n+1}$ 的每一种取法上加上 $n+2$ 则：$S \cup (S+1) = \{ 1, 2, \cdots, n+3 \}$
因为具有此性质的子集必定包含 $n+2$ ，故所有情况都已包含
且 $S_{n+1}$ 中必定包含 $n+1$ 而 $S_n$ 中必定没有这一项，因此没有重复
故 $S_{n+2} = S_n + S_{n+1}$
即证 $S_n = F_n$


### 6.45
*利用成套方法求解一般的递归式：*
\[
X_0 = \alpha \ ; \quad X_1 = \beta \ ; \quad X_n = X_{n-1} + X_{n-2} + \gamma n + \delta .
\]

因为该递归式共有 4 个未知数，因此可设：
\[
X_n = A(n) \alpha + B(n) \beta + C(n) \gamma + D(n) \delta
\]

不妨令 $\alpha = \beta = 1 \ , \ \gamma = \delta = 0$ 则：  
\[
\begin{cases}
A(0) = 1 \\
A(1) = 0
\end{cases} \quad
\begin{cases}
B(0) = 0 \\
B(1) = 1
\end{cases} \\
且 A(n) 和 B(n) 与 F(n) 有关系 \\
\Rightarrow A(n) = F_{n-1} \quad B(n) = F_n
\]
设 $X_n = 1$ 则：
\[
\begin{cases}
\alpha = \beta = 1 \\
\gamma = 0 \\
\delta = -1
\end{cases} \\
\Rightarrow 1 = A(n) + B(n) - D(n)
\]
设 $X_n = n$ 则：
\[
\begin{cases}
\alpha = 0 \\
\beta = 1 \\
\gamma = -1 \\
\delta = 3
\end{cases} \\
\Rightarrow n = B(n) - C(n) + 3 D(n)
\]

### 6.46
*$\cos{36^\circ}$ 和 $\cos{72^\circ}$ 等于什么？*

不妨设 $u = \cos{72^{\circ}} \ , \ v = \cos{36^{\circ}}$  

首先由三角函数的性质，可以得知：
\[
u \in (0, \dfrac{\sqrt{2}}{2}) \quad v \in (\dfrac{\sqrt{2}}{2}, 1)
\]

由二倍角公式：知  
\[
\begin{cases}
u = 2 v^2 - 1 \\
v = 1 - 2 sin^2{18^{\circ}} = 1 - 2 u^2
\end{cases}
\]

因此：
\[
u = 2(1 - 2u^2)^2 - 1 \\
8 u^4 - 8 u^2 - u + 1 = 0 \\
(u - 1) (u + \dfrac{1}{2}) (8 u^2 + 4u - 2) = 0 \\
\Rightarrow u = \dfrac{-1 + \sqrt{5}}{4} = \dfrac{1}{2 \phi} \\
v = \dfrac{1}{2} \phi
\]

### 6.47
*证明：*
\[
2^{n-1} F_n = \sum_k \binom{n}{2k+1} 5^k
\]
*并在 $p$ 为素数时利用此恒等式求出 $F_p \bmod p$ 和 $F_{p+1} \bmod p$ 的值.*

由公式：
\[
\boxed{F_n = \dfrac{1}{\sqrt{5}} (\phi^n - \hat{\phi}^n) \ .}
\]
因此：
\[
\begin{aligned}
2^n \sqrt{5} F_n &= (1 + \sqrt{5})^n - (1 - \sqrt{5})^n \\
2^n \sqrt{5} F_n &= 2 \sum_{k} \binom{n}{2k+1} (\sqrt{5})^{2k+1} \\
\Rightarrow 2^{n-1} F_n &= \sum_{k} \binom{n}{2k+1} 5^k
\end{aligned}
\]

由费马小定理，知：
\[
2^{p-1} \equiv 1 \pmod{p}
\]
所以
\[
F_p \equiv \sum_{k} \binom{p}{2k+1} 5^k \pmod{p} \\
当 p = 2 时，F_2 \bmod 2 = 1 \\
此外，注意到只有当 2k+1 = p ，即 k = \dfrac{p-1}{2} 时，\\
有 \binom{p}{2k+1} = 1 ，而其他时候 \binom{p}{2k+1} \bmod p = 0 \\
因此：F_p \equiv 5^{(p-1)/2} \pmod{p} \\[6pt]
又只有当 k = 0 和 k = \dfrac{p-1}{2} 时，\binom{p+1}{2k+1} \bmod p = 1 ，\\
而其他时候都有 \binom{p+1}{2k+1} \bmod p = 0 \\
因此：2 F_{p+1} \equiv 1 + 5^{(p-1)/2} \pmod{p}
\]

### 6.48
*证明：通过将与之相邻的变量合并在一起，可以从连项式多项式中去掉取值为零的参数：*
\[
\begin{aligned}
K_n (& x_1, \cdots, x_{m-1}, 0, x_{m+1}, \cdots, x_n) \\
 &= K_{n-2} (x_1, \cdots, x_{m-2}, x_{m-1} + x_{m+1}, x_{m+2}, \cdots, x_n) \ , \ 1 < m < n.
\end{aligned}
\]

\[
\begin{aligned}
左等式 &= K_m (x_1, \cdots, x_{m-1}, 0) K_{n-m} (x_{m+1}, \cdots, x_n) \\
& \ + K_{m-1} (x_1, \cdots, x_{m-1}) K_{n-m-1} (x_{m+2}, \cdots, x_n) \\
&= K_{m-2} (x_1, \cdots, x_{m-2}) K_{n-m} (x_{m+1}, \cdots, x_n) \\
& \ + K_{m-1}(x_1, \cdots, x_{m-1}) K_{n-m-1}(x_{m+2}, \cdots, x_n) \\
\xrightarrow{简记为} & K_{(1, m-2)} K_{(m+1, n)} + K_{(1, m-1)} K_{(m+2, n)} \\[6pt]
右等式 &= K (x_1, \cdots, x_{m-1} + x_{m+1}) K_{(m+2, n)} \\
& \ + K(x_1, \cdots, x_{m-2}) K_{(m+3, n)} \\
&= K_{(1, m-2)} \cdot (x_{m-1} + x_{m+1}) K_{(m+2, n)} \\
& \ + K_{(1, m-3)} K_{(m+2, n)} + K_{(1, m-2)} K_{(m+3, n)} \\
&= (K_{(1, m-2)} x_{m-1} K_{(m+2, n)} + K_{(1, m-3)} K_{(m+2, n)}) \\
& \ + (K_{(1, m-2)} x_{m+1} K_{(m+2, n)} + K_{(1, m-2)} K_{(m+3, n)}) \\
&= K_{(m+2, n)} K_{(1, m-1)} + K_{(1, m-2)} K_{(m+1, n)}
\end{aligned} \\
即证等式成立
\]

### 6.49
*求数 $\sum_{n \geqslant 1} 2 ^{- \lfloor n \phi \rfloor}$ 的连分数表示.*

由公式：
\[
\boxed{\dfrac{1-z}{z} \sum_{n \geqslant 1} z^{\lfloor n \phi \rfloor} = \dfrac{1}{z^{-F_0} + \dfrac{1}{z^{-F_1} + \dfrac{1}{z^{-F_2} + \dfrac{1}{\ddots}}}} \ .}
\]

取 $z = \dfrac{1}{2}$ 可得：
\[
\sum_{n \geqslant 1} 2 ^{- \lfloor n \phi \rfloor} = \dfrac{1}{2^{F_0} + \dfrac{1}{2^{F_1} + \dfrac{1}{\ddots}}}
\]

### 6.50
*对所有正整数 $n$ 用递归式：*
\[
\begin{aligned}
& f(1) = 1 \\
& f(2n) = f(n) \\
& f(2n+1) = f(n) + f(n+1) \\
\end{aligned}
\]
*定义 $f(n)$*  
*a. 对什么样的 $n$ ，$f(n)$ 是偶数？*  
*b. 证明 $f(n)$ 可以用连项式表示.*

a. 观察 $f(n)$ 当 $n$ 较小时的情形：
| $n$ |1|2|3|4|5|6|7|8|9|$\cdots$|
|---|---|---|---|---|---|---|---|---|---|---|
| $f(n)$ |1|1|2|1|3|2|3|1|4|$\cdots$|

可以看到 $f(n)$ 的元素以：奇，奇，偶的形式反复出现  

下面用归纳法证明这一结论：  

1.  $f(1)$ 为奇  ,  $f(2)$ 为奇  ,  $f(3)$ 为偶
2.  假设对于 $n$ （不妨设为奇数） 有：
  $f(n)$ 为奇  ,  $f(n+1)$ 为奇  ,  $f(n+2)$ 为偶  
3.  则对于  $f(n+3)$  ,  $f(n+4)$  ,  $f(n+5)$  有：

\[
\begin{aligned}
f(n+3) &= f(n+2) - f(n+1) = 偶 - 奇 = 奇 \\
f(n+4) &= f(n+3) + f(n+5) \\
f(n+5) &= f(\frac{n+5}{2})
\end{aligned}
\]

下证 $f(\dfrac{n+5}{2})$ 是偶数：
\[
\begin{aligned}
\because f(n) &= f(\frac{n-1}{2}) + f(\frac{n+1}{2}) = 奇 \\
f(n+1) &= f(\frac{n+1}{2}) = 奇 \\
f(n+2) &= f(\frac{n+1}{2}) + f(\frac{n+3}{2}) = 偶
\end{aligned} \\
因此有：\ f(\frac{n-1}{2}) 为偶 \ , \ f(\frac{n+1}{2}) 为奇 \ , \ f(\frac{n+3}{2}) 为奇 \\
按照假设步骤，我们有：f(\frac{n+5}{2}) 为偶
\]

\[
\begin{aligned}
所以有：f(n+3) &= 奇 \\
f(n+4) &= 奇 + 偶 = 奇 \\
f(n+5) &= 偶
\end{aligned}
\]

综上所述：$f(n)$ 为偶数，仅当 $n \setminus 3$.

### 6.53
*当 $0 \leqslant m \leqslant n$ 时，求 $\displaystyle\sum_{k=0}^m \binom{n}{k}^{-1} (-1)^k H_k$ 的封闭形式. 提示：习题 5.42 有一个和式，它没有因子 $H_k$.*

由习题 5.42 ([link](https://blog.csdn.net/qq_46013251/article/details/114602440)) 可知：
\[
\boxed{\displaystyle\sum (-1)^x \binom{n}{x}^{-1} \delta x = \dfrac{(-1)^{x+1} (n+1)}{(n+2) \binom{n+1}{x}} + C \ .}
\]

令 $v(x) = \dfrac{(-1)^{x+1} (n+1)}{(n+2) \binom{n+1}{x}}$ 则：$\displaystyle\Delta v(x) = (-1)^x \binom{n}{x}^{-1}$  


因此：
\[
\begin{aligned}
& \displaystyle\sum_{k=0}^m \binom{n}{k}^{-1} (-1)^k H_k \\
&= \sum_{0}^{m+1} (-1)^x \binom{n}{x}^{-1} H_x \delta x \\
&= H_x \left. \dfrac{(-1)^{x+1} (n+1)}{(n+2) \binom{n+1}{x}} \right|_0^{m+1} - \sum_{0}^{m+1} \dfrac{(-1)^{x+2} (n+1)}{(n+2) \binom{n+1}{x+1} (x+1)} \delta x \\
&= H_{m+1} \dfrac{(-1)^m (n+1)}{(n+2) \binom{n+1}{m+1}} - \sum_{0}^{m+1} \dfrac{(-1)^x}{(n+2) \binom{n}{x}} \delta x \\
&= H_{m+1} \dfrac{(-1)^m (n+1)}{(n+2)} - \dfrac{1}{n+2} \sum_{0}^{m+1} (-1)^x \binom{n}{x}^{-1} \delta x \\
&= - \dfrac{n+1}{(n+2)^2} + (H_{m+1} - \dfrac{1}{n+2}) \left( \dfrac{(-1)^m (n+1)}{(n+2) \binom{n+1}{m+1}} \right)
\end{aligned}
\]

### 6.58
*求出 $\sum_{n \geqslant 0} F_n^2 z^n$ 和 $\sum_{n \geqslant 0} F_n^3 z^n$ 的封闭形式。关于量 $F_{n+1}^3 - 4 F_n^3 - F_{n-1}^3$ ，你能得出什么结论？*

 由公式：
 \[
\boxed{F_n = \dfrac{1}{\sqrt{5}} (\phi^n - \hat{\phi}^n) \ . }
 \]

 因此：
 \[
\begin{aligned}
& \ \sum_{n \geqslant 0} F_n^2 z^n \\
&= \sum_{n \geqslant 0} \dfrac{1}{5} (\phi^{2n} + \hat{\phi}^{2n} - 2 (-1)^n) z^n \\
&= \dfrac{1}{5} \left( \sum_{n \geqslant 0} (\phi^2 z)^n + \sum_{n \geqslant 0} (\hat{\phi}^2 z)^n - 2 \sum_{n \geqslant 0} (-z)^n \right) \\
&= \dfrac{1}{5} \left( \sum_{n \geqslant 0} (\dfrac{3 + \sqrt{5}}{2} z)^n + \sum_{n \geqslant 0} (\dfrac{3 - \sqrt{5}}{2} z)^n - \dfrac{2}{1+z} \right) \\
&= \dfrac{1}{5} \left( \dfrac{2}{2 - (3 + \sqrt{5})z} + \dfrac{2}{2 - (3 - \sqrt{5})z} - \dfrac{2}{1+z} \right) \\
&= \dfrac{1}{5} \left( \dfrac{2-3z}{1-3z+z^2} - \dfrac{2}{1+z} \right)
\end{aligned}
\]

同理：
\[
\begin{aligned}
& \ \sum_{n \geqslant 0} F_n^3 z^n \\
&= \sum_{n \geqslant 0} \dfrac{1}{5 \sqrt{5}} \left( (\phi^3 z)^n - 3 (\phi^2 \hat{\phi} z)^n + 3 (\phi \hat{\phi}^2 z)^n - (\hat{\phi}^3 z)^n \right) \\
&= \dfrac{1}{5 \sqrt{5}} \left(\dfrac{1}{1-(\sqrt{5} + 2)z} - \dfrac{6}{2 - (- \sqrt{5} - 1)z} + \dfrac{6}{2 - (\sqrt{5} - 1)z} - \dfrac{1}{1 - (2 - \sqrt{5})z} \right) \\
&= \dfrac{1}{5 \sqrt{5}} \left( \dfrac{2 \sqrt{5} z}{1 - 4z - z^2} + \dfrac{3 \sqrt{5} z}{1 + z - z^2} \right) \\
&= \dfrac{1}{5} \left(\dfrac{2z}{1-4z-z^2} + \dfrac{3z}{1+z-z^2} \right)
\end{aligned}
\]


对于量 $F_{n+1}^3 - 4 F_n^3 - F_{n-1}^3$ 计算可得：
\[
F_{n+1}^3 - 4F_n^3 - F_{n-1}^3 = 3 (-1)^n F_n
\]

### 6.77
*当 $m$ 和 $n$ 是整数，$n \geqslant 0$ 时，$\sigma_n(m)$ 的值当 $m < 0$ 时由 $\displaystyle\genfrac{\{}{\}}{0pt}{} {n}{m} = (-1)^{n-m+1} \frac{n!}{(m-1)!} \sigma_{n-m}(-m)$ 给出，当 $m>n$ 时由 $\displaystyle\genfrac{[}{]}{0pt}{} {n}{m} = \frac{n!}{(m-1)!} \sigma_{n-m}(n)$ 给出，而当 $m=0$ 时则由 $\dfrac{B_m}{m!} = -m \sigma_{m}(0)$ 给出。证明：在其余情形，我们有：*
\[
\sigma_n (m) = \dfrac{(-1)^{m+n-1}}{m! \ (n-m)!} \sum_{k=0}^{m-1} \genfrac{[}{]}{0pt}{} {m}{m-k} \dfrac{B_{n-k}}{n-k} \ , \ 整数 \ n \geqslant m > 0.
\]

用数学归纳法证明：

1. 当 $m = 1$ 时，
\[
\sigma_{n}(1) = \dfrac{(-1)^n}{(n-1)!} \dfrac{B_n}{n} \\
\sigma_{n-1}(1) = \dfrac{(-1)^{n-1}}{(n-2)!} \dfrac{B_{n-1}}{n-1}
\]

2. 假设对 $m-1$ 成立：
\[
\sigma_n (m-1) = \dfrac{(-1)^{m+n-2}}{(m-1)! \ (n-m+1)!} \sum_{k=0}^{m-2} \genfrac{[}{]}{0pt}{} {m-1}{m-k-1} \dfrac{B_{n-k}}{n-k} \\
\sigma_{n-1} (m-1) = \dfrac{(-1)^{m+n-3}}{(m-1)! \ (n-m)!} \sum_{k=0}^{m-2} \genfrac{[}{]}{0pt}{} {m-1}{m-k-1} \dfrac{B_{n-k-1}}{n-k-1}  
\]

3. 对于 $m$ ：
\[
由习题 6.18 知：
\boxed{(x+1) \sigma_n (x+1) = (x-n) \sigma_n (x) + x \sigma_{n-1} (x) \ .} \\
\begin{aligned}
(m) \sigma_n (m) &= (m-1-n) \sigma_n (m-1) + (m-1) \sigma_{n-1} (m-1) \\
 &= \dfrac{(m-1-n) (-1)^{m+n-2}}{(m-1)! (n-m+1)!} \sum_{k=0}^{m-2} \genfrac{[}{]}{0pt}{} {m-1}{m-k-1} \dfrac{B_{n-k}}{n-k} \\
 & \phantom{=} + \dfrac{(m-1) (-1)^{m+n-3}}{(m-1)! \ (n-m)!} \sum_{k=1}^{m-1} \genfrac{[}{]}{0pt}{} {m-1}{m-k} \dfrac{B_{n-k}}{n-k} \\
 &= \dfrac{(m-1-n) (-1)^{m+n-2}}{(m-1)! (n-m+1)!} \left( \sum_{k=0}^{m-1} \genfrac{[}{]}{0pt}{} {m-1}{m-k-1} \dfrac{B_{n-k}}{n-k} - \genfrac{[}{]}{0pt}{} {m-1}{0} \dfrac{n-m+1}{n-m+1} \right) \\
 & \phantom{=} + \dfrac{(m-1) (-1)^{m+n-3}}{(m-1)! \ (n-m)!} \left( \sum_{k=0}^{m-1} \genfrac{[}{]}{0pt}{} {m-1}{m-k} \dfrac{B_{n-k}}{n-k} - \genfrac{[}{]}{0pt}{} {m-1}{m} \dfrac{B_n}{n} \right) \\
 &= \dfrac{(-1)^{m+n-1}}{(m-1)! \ (n-m)!} \sum_{k=0}^{m-1} \genfrac{[}{]}{0pt}{} {m-1}{m-1-k} \dfrac{B_{n-k}}{n-k} \\
 & \phantom{=} + \dfrac{(-1)^{m+n-1}}{(m-1)! \ (n-m)!} (m-1) \sum_{k=0}^{m-1} \genfrac{[}{]}{0pt}{} {m-1}{m-k} \dfrac{B_{n-k}}{n-k} \\
\Rightarrow m \sigma_{n} (m) &= \dfrac{(-1)^{m+n-1}}{(m-1)! \ (n-m)!} \sum_{k=0}^{m-1} \genfrac{[}{]}{0pt}{} {m}{m-k} \dfrac{B_{n-k}}{n-k} \\
即证：\sigma_n (m) &= \dfrac{(-1)^{m+n-1}}{m! \ (n-m)!} \sum_{k=0}^{m-1} \genfrac{[}{]}{0pt}{} {m}{m-k} \dfrac{B_{n-k}}{n-k}
\end{aligned}
\]
