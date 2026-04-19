## 习题4

### 4.1
*对 $1 \le k \le 6$，恰有 $k$ 个因子的最小正整数是什么？*

|1|2|3|4|5|6|
|---|---|---|---|---|---|
|1|2|4|6|16|12|

### 4.2
*证明 $gcd(m,n) \cdot lcm(m,n) = m \cdot n$，并在 $n \bmod m \neq 0$时利用这个恒等式，从而用 $lcm(n \bmod m , m)$ 表示出 $lcm(m,n).$*

$$
m = \prod_{p} p^{m_p} \ , 每个 m_p \ge 0 \\
n = \prod_{p} p^{n_p} \ , 每个 n_p \ge 0 \\
\Leftrightarrow
gcd (m,n) = \prod_{p} p^{\min{(m_p,n_p)}} \ , \
lcm (m,n) = \prod_{p} p^{\max{(m_p,n_p)}} \\
\Leftrightarrow
gcd(m,n) \cdot lcm(m,n) = \prod_{p} p^{\min{(m_p,n_p)} + \max{(m_p,n_p)}} \\
= \prod_{p} p^{m_p + n_p} = mn
$$

$$
\begin{align}
lcm(m,n) & = \frac{mn}{gcd(m,n)} \\
 & = \frac{mn}{gcd(n \bmod m , m)} \\
 & = \frac{mn}{(\frac{(n \bmod m) \cdot m}{lcm(n \bmod m , m)})} \\
 & = \frac{lcm(n \bmod m , m) \cdot n}{n \bmod m}
\end{align}
$$

### 4.3
*设 $\pi(x)$ 是不超过 $x$ 的素数个数。证明或推翻：*
$$
\pi(x) - \pi(x-1) = [x 是素数].
$$

如果 $x$ 是整数，这显然正确  
若 $x$ 不是整数，可以改为：$\pi(x) - \pi(x-1) = [\lfloor x \rfloor 是素数].$

### 4.4
*如果 Stern-Brocot 构造是从五个分数 $(\frac{0}{1} , \frac{1}{0} , \frac{0}{-1} , \frac{-1}{0} , \frac{0}{1})$ 而不是从 $(\frac{0}{1} , \frac{1}{0})$ 出发的，将会发生什么？*

在 $(\frac{1}{0} , \frac{0}{-1})$ 中的每个数相当于把 $(\frac{0}{1} , \frac{1}{0})$ 中对应的数分子分母颠倒，再乘以 (-1) ；同理，在 $(\frac{0}{-1} , \frac{-1}{0})$ 中的每个数相当于把 $(\frac{1}{0} , \frac{0}{-1})$ 中对应的数分子分母颠倒，再乘以 (-1) $\dots$

### 4.5
*当 $L$ 和 $R$ 是如下的 2×2 矩阵时，求 $L^k$ 和 $R^k$ 的简单公式。*
$$
L =
\begin{bmatrix}
 1 & 1 \\
 0 & 1
\end{bmatrix} \quad
R =
\begin{bmatrix}
 1 & 0 \\
 1 & 1
\end{bmatrix} \\[12pt]
$$

$$
L^k = \begin{bmatrix}
 1 & k \\
 0 & 1
\end{bmatrix} \\[12pt]
R^k =
\begin{bmatrix}
 1 & 0 \\
 k & 1
\end{bmatrix}
$$

### 4.6
*$a \equiv b \pmod{0}$ 的含义是什么？*

$$
a \equiv b \pmod{0} \Leftrightarrow a \bmod 0 = b \bmod 0 \\
\Leftrightarrow a = b
$$

### 4.7
*十个标号 1~10 的人如同在约瑟夫问题中那样排成一个圆圈，每隔 $m-1$ 个人处死一人。（$m$ 的值可以比 10 大得多。）证明：对任何 $k$ ，前三个死去的人不可能是 10，k 和 k+1 （依照这个次序）。*

$$
第一个死去的人是 10 \Leftrightarrow m \bmod 10 = 0 \\
第二个死去的人是 k \Leftrightarrow m \bmod 9 = k \\
第三个死去的人是 k+1 \Leftrightarrow m \bmod 8 = 1 \\
这是不可能的，因为 m \bmod 10 = 0 意味着 m 是偶数，\\
而 m \bmod 8 = 1 意味着 m 是奇数，不存在这样的m。
$$

### 4.8
*正文中考虑的剩余系 $(x \bmod{3} \ , \ x \bmod{5})$ 有如下令人不解的性质：13 对应 (1,3) ，它看起来几乎是相同的。说明怎样求出所有这种巧合的例子，而不用把 15 对剩余全都计算出来。换句话说，就是求同余式：*
$$
10x + y \equiv x \pmod{3} \ , \quad 10x + y \equiv y \pmod{5}
$$
*所有相关的解。提示：利用事实 $10u + 6v \equiv u \pmod{3}$ 以及 $10u + 6v \equiv v \pmod{5}$.*

$$
已知：
\begin{cases}
10x + 6y \equiv x \pmod{3} \\
10x + 6y \equiv y \pmod{5}
\end{cases} \\
求解：
\begin{cases}
10x + y \equiv 10x + 6y \pmod{3} \\
10x + y \equiv 10x + 6y \pmod{5}
\end{cases} \\
\Rightarrow 10x + y \equiv 10x + 6y \pmod{15} \\
\Rightarrow 5y \equiv 0 \pmod{15} \\
\Rightarrow y \equiv 0 \pmod{3} \\
考虑到该剩余系，我们有：
\begin{cases}
10x + y < 15 \\
x < 3 \\
y < 5
\end{cases} \\
因此： x = 0 或者 1 \ ; \ y = 0 或者 3
$$

### 4.9
*证明 $(3^{77} - 1) / 2$ 是奇的合数。提示： $3^{77}\bmod 4$ 等于什么？*

$$
3 \equiv -1 \pmod{4} \Rightarrow 3^{77} \equiv (-1)^{77} \pmod{4} \\
\because (-1) \bmod 4 = 3 \\
\therefore 3^{77} \bmod 4 = 3 \\
\Rightarrow \frac{3^{77} - 1}{2} \ 是奇数 \\[12pt]
或者用二项式定理证明：\\
3^{77} = (1+2)^{77} = \sum_{k=0}^{77} \binom{77}{k} 2^k = 1 + 2 \binom{77}{1} + \sum_{k=2}^{77} \binom{77}{k} 2^k \\
\Rightarrow \frac{3^{77} - 1}{2} = 77 + \sum_{k=2}^{77} \binom{77}{k} 2^{k-1} \ 是奇数 \\[16pt]
\because 77 = 7 \times 11 \\
\therefore \frac{3^{77}-1}{3^7-1} = 3^{70} + 3^{63} + \cdots + 1 \\
\frac{3^{77}-1}{3^{11}-1} = 3^{66} + 3^{55} + \cdots + 1 \\
\Rightarrow \frac{3^{77} - 1}{2} \ 是合数
$$

### 4.10
*计算 $\varphi(999)$.*

$$
利用公式：\varphi(m) = \prod_{p \setminus m} (p^{m_p} - p^{m_p-1}) = m \prod_{p \setminus m} (1 - \frac{1}{p}). \\
\Rightarrow \varphi(999) = 999 (1-\frac{1}{3}) (1-\frac{1}{37}) = 648
$$

### 4.11
*找一个具有如下性质的函数 $\sigma(n)$ :*
$$
g(n) = \sum_{0 \le k \le n} f(k) \Leftrightarrow f(n) = \sum_{0 \le k \le n} \sigma(k) g(n-k)
$$
*（这与默比乌斯函数类似，见 $g(m) = \sum_{d \setminus m} f(d) \Leftrightarrow f(m) = \sum_{d \setminus m} \mu(d) g(\frac{m}{d})$.）*

$$
\begin{align}
如果 g(n) & = \sum_{0 \le k \le n} f(k) \\
那么 \sum_{0 \le k \le n} \sigma(k) g(n-k) & = \sum_{0 \le k \le n} \sigma (n - k) g(k) \\
& = \sum_{0 \le k \le n} \sigma (n - k) \sum_{0 \le j \le k} f(j) \\
& = \sum_{0 \le j \le n} \sum_{j \le k \le n} \sigma (n - k) f(j) \\
\end{align} \\
若 \sum_{0 \le k \le n} \sigma(k) g(n-k) = f(n) \\
则 \sigma(0) = 1 \ , \sigma(1) = -1 \ , 对于其他 n > 1 \ , 都有 \sigma(n) = 0
$$

### 4.12
*化简公式 $\sum_{d \setminus m} \sum_{k \setminus d} \mu (k) g(d/k)$.*

补充条件:  
默比乌斯函数 $\mu (m)$ 对所有整数 $m \ge 1$ 由等式 $\sum_{d \setminus m} \mu (d) = [m = 1]$ 来定义  

$$
\begin{align}
\sum_{d \setminus m} \sum_{k \setminus d} \mu (k) g(d/k) &= \sum_{d \setminus m} \sum_{k \setminus d} \mu (d/k) g(k) \\
&= \sum_{k \setminus m} \sum_{l \setminus (m/k)} \mu (l) g(k) \\
&= \sum_{k \setminus m} [\frac{m}{k} = 1] g(k) \\
&= g(m)
\end{align}
$$

### 4.13
*如果一个正整数 $n$ 对任何 $m > 1$ 都不能被 $m^2$ 整除，那么称它是无平方因子的(squarefree)。求 $n$ 是无平方因子数的一个必要且充分条件，*  
*$a.$ 用 $n$ 的素数幂表示来表出这个条件；*  
*$b.$ 用 $\mu (n)$ 表出这个条件。*

$$
a. \quad n = \prod_{p} p^{n_p} \ , 每个 n_p \ge 0 \\
\Rightarrow n_p < 2
$$

$$
b. \quad \mu (n) = \prod_{p \setminus n} \mu (p^{n_p}) =
\begin{cases}
(-1)^r \ , \quad n = p_1 p_2 \dots p_r \\
0 \ , \quad n 能被某个 p^2 整除
\end{cases} \\
\Rightarrow \mu (n) \neq 0
$$

### 4.14
*证明或推翻：*  
*$a. \ gcd(km, kn) = k \ gcd(m, n)$*  
*$b. \ lcm(km, kn) = k \ lcm(m, n)$*

$$
考虑当 k > 0 时的情况：k = \prod_{p} p^{k_p} \ , \quad 每个k_p \ge 0 \\
m = \prod_{p} p^{m_p} \ , \quad 每个m_p \ge 0 \\
n = \prod_{p} p^{n_p} \ , \quad 每个n_p \ge 0 \\
$$

$$
\begin{align}
a. \quad
gcd(km,kn) & = \prod_{p} p^{\min{(k_p+m_p,k_p+n_p)}} = \prod_{p} p^{k_p + \min{(m_p,n_p)}} \\
& = k \prod_{p} p^{\min{(m_p,n_p)}} = k \ gcd(m,n) \\[10pt]
b. \quad
lcm(km,kn) & = \prod_{p} p^{\max{(k_p+m_p,k_p+n_p)}} = \prod_{p} p^{k_p + \max{(m_p,n_p)}} \\
& = k \prod_{p} p^{\max{(m_p,n_p)}} = k \ lcm(m,n)
\end{align}
$$

$$
当 k = 0 时，gcd(0, 0)未定义 \\[8pt]
当 k < 0 时，gcd(km, kn) = gcd(-km, -kn) = -k \ gcd(m, n) \\
lcm(km, kn) = lcm(-km, -kn) = -k \ lcm(m, n)
$$

### 4.15
*每个素数都能作为某个欧几里得数 $e_n$ 的因子出现吗？（欧几里得数 $e_n = e_1 e_2 \dots e_{n-1} + 1$）*

$$
考虑前几个欧几里得数：e_1 = 2 \ , e_2 = 3 \ , e_3 = 7 \ , e_4 = 43 \\
发现它们模 5 之后不是等于 2 就是等于 3 ，可以猜测这样的规律还会出现 \\
不妨设 e_{n-1} = 5k + 2 \\
则 e_n = e_{n-1}^2 - e_{n-1} + 1 = 25 k^2 + 15k + 3 \\
若设 e_{n-1} = 5k + 3 \\
则 e_n = 25 k^2 + 25k + 7 \\
因此可知：e_n \bmod 5 = 2 或者 3 \\
可见并不是每个素数都能作为某个欧几里得数 e_n 的因子出现
$$

### 4.16
*前 $n$ 个欧几里得数的倒数之和是什么？*

$$
\begin{align}
& \quad \frac{1}{e_1} + \frac{1}{e_2} + \cdots + \frac{1}{e_n} \\
&= (\frac{1}{e_1} + \frac{1}{e_2} + \cdots + \frac{1}{e_n} + \frac{1}{e_1 e_2 \dots e_n}) - \frac{1}{e_1 e_2 \dots e_n} \\
&= (\frac{1}{e_1} + \frac{1}{e_2} + \cdots + \frac{e_1 e_2 \dots e_{n-1}}{e_1 e_2 \dots e_n} + \frac{1}{e_1 e_2 \dots e_n}) - \frac{1}{e_1 e_2 \dots e_n} \\
&= (\frac{1}{e_1} + \frac{1}{e_2} + \cdots + \frac{1}{e_1 e_2 \dots e_{n-1}}) - \frac{1}{e_1 e_2 \dots e_n} \\
& \quad \vdots \\
&= 1 - \frac{1}{e_1 e_2 \dots e_n} = 1 - \frac{1}{e_{n+1} -1}
\end{align}
$$

### 4.17
*设 $f_n$ 是“费马数” $2^{2^n} + 1$. 证明，如果 $m<n$ ，那么 $f_m \bot f_n$.*

($m \bot n$ : m 和 n 互素)

$$
\begin{align}
f_n = 2^{2^n} + 1 \ &\Rightarrow \ \lg{(f_n-1)} = 2^n \\[8pt]
\Rightarrow \lg{(f_n-1)} &= 2 \cdot \lg{(f_{n-1}-1)} = \lg{(f_{n-1}-1)^2} \\
\Rightarrow f_n &= f_{n-1}^2 - 2 f_{n-1} + 2 \\
 &= (f_{n-1} - 2) f_{n-1} + 2 \\
 & \quad \vdots \\
 &= 1 \cdot f_0 f_1 \dots f_{n-1} + 2 \\[8pt]
\Rightarrow f_n \bmod f_m &= 2 \ , \ (m < n)\\
\Rightarrow gcd(f_m, f_n) &= gcd(f_n \bmod f_m, f_m) \\
 &= gcd(2, f_m) \\
 &= 1 \\
\Rightarrow f_m \bot f_n
\end{align}
$$

### 4.18
*证明，如果 $2^n+1$ 是素数，那么 $n$ 是 2 的幂。*

我们证明它的逆否命题：
$$
假设 n = mq \ , q 是奇数 \\
则 2^{mq} + 1 = (2^m + 1) (2^{m(q-1)} - 2^{m(q-2)} + \cdots - 2^m + 1)
$$

### 4.19
*当 $n$ 是正整数时，证明下面的恒等式：*
$$
\begin{align}
\sum_{1 \le k < n} \lfloor \frac{\varphi (k+1)}{k} \rfloor & = \sum_{1 < m \le n} \lfloor (\sum_{1 \le k < m} \lfloor (m / k) / \lceil m / k \rceil \rfloor)^{-1} \rfloor \\
& = n - 1 - \sum_{k=1}^n \lceil \{ \frac{(k-1)! + 1}{k} \} \rceil.
\end{align}
$$
*提示：这是一个技巧问题，其答案非常容易。*

$$
\varphi(m) 代表着在 \{ 0, 1, \dots m-1 \} 中与 m 互素的整数个数 \\
因此： \varphi(1) = 1 \ , \ \varphi(p) = p-1 \ , \ 对于合数 m 均有 \varphi(m) < m-1 \\
第一个式子 \sum_{1 \le k < n} \lfloor \frac{\varphi (k+1)}{k} \rfloor \ 即为不超过 n 的素数的个数，即 \pi(n) \\[10pt]
第二个式子 \sum_{1 < m \le n} \lfloor (\sum_{1 \le k < m} \lfloor (m / k) / \lceil m / k \rceil \rfloor)^{-1} \rfloor \\
内部的 \lfloor \frac{m/k}{\lceil m/k \rceil} \rfloor 为 1 仅当 k \setminus m \\
因此 \lfloor (\sum_{1 \le k < m} \lfloor (m / k) / \lceil m / k \rceil \rfloor)^{-1} \rfloor 为 1 仅当 m 是素数 \\
所以第二个式子也是统计的不超过 n 的素数个数 \pi(n) \\[10pt]
根据威尔逊定理： (n-1)! \equiv -1 \pmod{n} \Leftrightarrow n 是素数， \ n>1 \\
因此：(n-1)! + 1 \bmod n = 0 仅当 n 是素数 \\
\lceil \{ \frac{(k-1)! + 1}{k} \} \rceil 为 0 仅当 k 是素数 \\
\sum_{k=1}^n \lceil \{ \frac{(k-1)! + 1}{k} \} \rceil 统计的是不超过 n 的合数个数 \\
所以第三个式子也是统计的不超过 n 的素数个数 \pi(n)
$$

### 4.21
*设 $P_n$ 是第 $n$ 个素数，求常数 $K$ 使得 $\lfloor (10^{n^2} K) \bmod 10^n \rfloor = P_n$.*

$$
根据贝特朗假设（对每个正整数 n 都存在一个素数 p ，使得 n < p \le 2n）\\
因此： P_n < 10^n \\
所以存在这样的 K \\
只要将素数按照适当的间隔依次放入 K 的小数部分即可： \\
K = \sum_{k \ge 1} 10^{-k^2} P_k
$$

### 4.22
*数 $1 \ 111 \ 111 \ 111 \ 111 \ 111 \ 111$ 是素数。证明，在任何基数 $b$ 下， $(1 1 \dots 1)_b$ 仅当 1 的个数是素数时才有可能是素数。*

$$
\begin{align}
假设 1 的个数 & n 是合数， n = mk \\
(1 1 \dots 1)_b &= b^0 + b^1 + \cdots + b^{n-1} = \frac{b^n-1}{b-1}\\
&= \frac{(b^m-1) (b^{m(k-1)} + b^{m(k-2)} + \cdots + 1)}{b-1} \\
&= (b^0 + b^1 + \cdots + b^{m-1}) (b^{m(k-1)} + b^{m(k-2)} + \cdots + 1)
\end{align}
$$

### 4.23
*对正文讨论 $\varepsilon_2 (n!)$ 时涉及的直尺函数 $\rho (k)$ 给出一个递归式。证明 $\rho (k)$ 与有 $n$ 个圆盘的河内塔的 $2^n - 1$ 次移动中的第 $k$ 步所移动的那个圆盘有关联 $(1 \le k \le 2^n - 1)$.*

$$
\varepsilon_2 (n!) 可以通过将这 n 个数对 2 的幂的贡献（也就是被 2 整除) 求和来得到 \\
这其中每个数 k 对 2 的幂的贡献即是 \rho (k) \\
例如: 4 被 2 整除 ， 4 也被 4 整除 ，因此 \rho (4) = 2 \\
如此一来，有：\rho(2k+1) = 0 \ , \quad \rho(2k) = \rho(k) + 1 \ , (k>0) \\[8pt]
回忆一下有 n 个圆盘的河内塔的移动方式：先将前 n-1 个圆盘移到过渡桩上，\\
再将第 n 个圆盘移到目的桩上，最后再将那前 n-1 个圆盘移到目的桩。 \\
因此，第k步移动的圆盘一定也是倒数第k步所移动的圆盘。 \\
我们有：P(k) = P(2^n - k) \ , \quad 1 \le k \le 2^n-1 \\[8pt]
要证 \rho (k) 与 P(k) 有关联，即证 \rho (k) = \rho (2^n - k) \ , \quad 1 \le k \le 2^n-1 \\
1. 若 k 为奇数，则两边为0，成立 \\
2. 若 k 为偶数，不妨令 k = 2^l j \ , \ (l 是不大于 n 的正整数, j 是奇数) \\
\rho(k) = \rho(2^l j) = \rho(j) + l = l \\
\rho(2^n - k) = \rho(2^l (2^{n-l} - j)) = \rho(2^{n-l} - j) + l = l \\
\Rightarrow \rho (k) = \rho (2^n - k)
$$

### 4.24
*用 $\nu_p (n)$ （它是 $n$ 用 $p$ 进制表示时各位数字的和）来表示 $\varepsilon_p (n!)$ ，由此对 $\varepsilon_2 (n!) = n - \nu_2 (n)$ 进行推广。*

$$
将 n! 的 n 个数对 p 的幂的贡献求和，可得 \varepsilon_p (n!) 的值 \\
因此  \varepsilon_p (n!) = \lfloor \frac{n}{p} \rfloor + \lfloor \frac{n}{p^2} \rfloor + \lfloor \frac{n}{p^3} \rfloor + \dots = \sum_{k \ge 1} \lfloor \frac{n}{p^k} \rfloor \\[12pt]
将 n 写成 p 进制: (n_m \ n_{m-1} \ \dots \ n_0)_p \ (\forall i \in [0,m] \ , n_i \in [0,p)) \\
则其中每个 n_i 对 n 贡献: p^{i} \cdot n_i \\
对 \varepsilon_p (n!) 贡献: \sum_{k \ge 1} \lfloor \frac{p^i \cdot n_i}{p^k} \rfloor = n_i (p^{i-1} + p^{i-1} + \dots + p^0) \\
= \frac{n_i (p^i - 1)}{p - 1} \\
因此： \varepsilon_p (n!) = \sum_{i = 0}^m \frac{n_i (p^i - 1)}{p - 1} = \frac{n - \nu_p (n)}{p-1}
$$

### 4.25
*如果 $m \setminus n$ 且 $m \bot n / m$，我们称 $m$ 精确整除 $n$ 并记之为 $m \setminus \setminus n.$ 例如，在正文讨论阶乘因子时，$p^{\varepsilon_p (n!)} \setminus \setminus n! \ .$ 证明或推翻如下命题：*
$$
\begin{align}
a. & \quad 如果 k \bot m \ ，则 k \setminus \setminus n 且 m \setminus \setminus n \Leftrightarrow km \setminus \setminus n. \\
b. & \quad 对所有 m,n > 0 \ , 或者 gcd(m,n) \setminus \setminus m \ ，或者 gcd(m,n) \setminus \setminus n.
\end{align}
$$

$$
a. \quad 命题为真。\
k \bot m \Leftrightarrow k_p \cdot m_p = 0 \ , \ 对所有 p \\
k \setminus n \Leftrightarrow k_p \le n_p \ , \ 对所有 p \\
m \setminus n \Leftrightarrow m_p \le n_p \ , \ 对所有 p \\
因此有：km \setminus n \Leftrightarrow k_p \cdot m_p \le n_p \ , \ 对所有 p \\
k \bot \frac{n}{k} \Leftrightarrow k_p (n_p - k_p) = 0 \ , \ 对所有 p \\
m \bot \frac{n}{m} \Leftrightarrow m_p (n_p - m_p) = 0 \ , \ 对所有 p \\
因此有：km \bot \frac{n}{km} \Leftrightarrow (k_p + m_p) (n_p - k_p - m_p) = 0 \ , \ 对所有 p
$$

$$
b. \quad 命题为假。当 m = 12 \ , \ n = 18 时，gcd(m,n) = 6 \\
但是 6 既不精确整除 12 也不精确整除 18
$$

### 4.30
*证明下面的命题（中国剩余定理）：设 $m_1, \dots , m_r$ 是正整数，对 $1 \le j < k \le r$ 有 $m_j \bot m_k$ ，设 $m = m_1 \dots m_r$ ，又设 $a_1, \dots , a_r, A$ 都是整数。那么恰好存在一个整数 $a$ ，使得 $a \equiv a_k \ (mod \ m_k) \ , 1 \le k \le r$ 以及 $A \le a < A+m$.*

$$
a \in [A , A+m) \ 共有 m 种可能的取值 \\
并且对这 m 种取值 a \bmod m 也各不相同 \\
由于：a \equiv b \pmod{mn} \\
\Leftrightarrow a \equiv b \pmod{m} 且 a \equiv b \pmod{n} \ , \ 如果 m \bot n \\
因此 (a \bmod m_k \ , \ 1 \le k \le r) 各不相同且取遍所有可能的值: \\
共有 m_1 m_2 \cdots m_r = m 种可能 \\
根据鸽巢原理，必定存在一个整数 a 使得 a \equiv a_k \pmod{m_k} \ , \ 1 \le k \le r
$$

### 4.31
*一个用十进制表示的数能被 3 整除当且仅当它的各位数字之和能被 3 整除。证明这个广为人知的法则，并对它进行推广。*

$$
\begin{align}
\because 10 & \equiv 1 \pmod{3} \\
\therefore 10^n & \equiv 1 \pmod{3} \\
\end{align} \\
\Rightarrow d_m (10^m) + d_{m-1} (10^{m-1}) + \cdots + d_0 \\
\equiv d_m + d_{m-1} + \cdots + d_0 \pmod{3}
$$

推广：
$$
\begin{align}
b \equiv 1 \pmod{d} \\
\Rightarrow b^n \equiv 1 \pmod{d} \\
\end{align} \\
一个 b 进制数能被 d 整除，当且仅当它的各位数字之和能被 d 整除
$$

### 4.32
*通过推广 $n^{p-1} \equiv 1 \pmod{p} \ , \ n \bot p$ 的证明来证明欧拉定理： $n^{\varphi(m)} \equiv 1 \pmod{m} \ , \ 如果 n \bot m$.*

$$
不妨令 a_1, a_2, \dots , a_r \ (r = \varphi(m)) 是小于 m 且与 m 互素的整数 \\
因此 (a_1 n \bmod m) , (a_2 n \bmod m) , \dots , (a_r n \bmod m) 各不相同 \\
因为当 m \bot n 时： jn \equiv kn \pmod{m} \Leftrightarrow j \equiv k \pmod{m} \\
又因为 gcd(a_i n \ , m) = gcd(a_i n \bmod m \ , m) = 1 \\
所以a_i n \bmod m 的结果与 m 互素，且小于 m \\
由鸽巢原理知： (a_1 n \bmod m) , (a_2 n \bmod m) , \dots , (a_r n \bmod m) \\
取值为: \{ a_1, a_2, \dots , a_r \} \\[8pt]
将它们乘在一起，得到：\\
\quad a_1 n \times a_2 n \times \cdots \times a_r n
\equiv a_1 a_2 \dots a_r \pmod{m} \\
又 \ a_1 a_2 \dots a_r \bot m \\
\Rightarrow n^{\varphi(m)} \equiv 1 \pmod{m}
$$

### 4.33
*证明，如果 $f(m)$ 和 $g(m)$ 是积性函数，则 $h(m) = \sum_{d \setminus m} f(d) g(m / d)$ 依然。*

积性函数：如果 $f(1) = 1$ ，且 $f(m_1 m_2) = f(m_1) f(m_2) ，只要 m_1 \bot m_2$ ，那么正整数函数 $f(m)$ 称为积性的(multiplicative).

$$
h(1) = f(1)g(1) = 1 \\[8pt]
如果 m_1 \bot m_2 \\
不妨令 d_1 \setminus m_1 \ , \ d_2 \setminus m_2 \\
则 d_1 \bot d_2 \\
并且 d_1 d_2 \setminus m_1 m_2 \\
\begin{align}
h(m_1 m_2) &=  \sum_{d \setminus m_1 m_2} f(d) g(\frac{m_1 m_2}{d}) \\
 &= \sum_{d_1 \setminus m_1, d_2 \setminus m_2} f(d_1 d_2) g(\frac{m_1}{d_1} \cdot \frac{m_2}{d_2}) \\
 &= \sum_{d_1 \setminus m_1} \sum_{d_2 \setminus m_2} f(d_1) f(d_2) g(\frac{m_1}{d_1}) g(\frac{m_2}{d_2}) \\
 &= h(m_1) h(m_2)
\end{align}
$$

### 4.34
*证明 $g(m) = \sum_{d \setminus m} f(d) \Leftrightarrow f(m) = \sum_{d \setminus m} \mu (d) g(\frac{m}{d}).$ 是 $g(x) = \sum_{d \ge 1} f(x/d) \Leftrightarrow f(x) = \sum_{d \ge 1} \mu (d) g(x/d).$ 的特例。*

$$
第一个式子中 \ g(m) = \sum_{d \setminus m} f(d) \ 统计的是 m 的因子 \\
而只要在第二个式子中 \ g(x) = \sum_{d \ge 1} f(x/d) ，\\
令其 \ f(x) = [x是整数] \cdot f(x) \ 即可。
$$

### 4.35
*当 $m$ 和 $n$ 是满足 $m \neq n$ 的非负整数时，设 $I(m,n)$ 是满足关系式*
$$
I(m,n)m + I(n,m)n = gcd(m,n)
$$
*的函数。那么，在 $m'm + n'n = gcd(m,n)$ 中有 $I(m,n) = m'$ 以及 $I(n,m) = n'$ ， $I(m,n)$ 的值是 $m$ 关于 $n$ 的一个逆元。求出定义 $I(m,n)$ 的递归式。*

基础情况：
$$
若 m = 0 ，直接取 m'=0 以及 n'=1 使等式成立\\
\Rightarrow I(m,0) = 1 \ , \quad I(0,n) = 0
$$

不妨设 $m > n > 0$
$$
\begin{align}
令 \ r &= m \bmod n \\
I(r,n) r + I(n,r) n &= gcd(r,n) = gcd(m,n) \\
I(r,n) (m - n \lfloor \frac{m}{n} \rfloor) + I(n,r) n &= I(m,n)m + I(n,m)n \\
I(r,n) m  + (I(n,r) - \lfloor \frac{m}{n} \rfloor I(r,n)) n &= I(m,n)m + I(n,m)n \\
\Rightarrow I(m \bmod n, n) &= I(m,n) \\
\Rightarrow I(n,r) - \lfloor \frac{m}{n} \rfloor I(r,n) &= I(n,m)
\end{align}
$$

因此当 $n > m > 0$ 时:
$$
I(m,n) = I(m, n \bmod m) - \lfloor \frac{n}{m} \rfloor I(n \bmod m,m)
$$

### 4.37
*证明：存在一个常数 $E$ 使得：$e_n = \lfloor E^{2^n} + \frac{1}{2} \rfloor.$ 提示：证明 $e_n - \frac{1}{2} = (e_{n-1} - \frac{1}{2})^2 + \frac{1}{4}$，并考虑 $2^{-n} \ln{(e_n - \frac{1}{2})}.$*  
*(注意 $e_n = e_1 e_2 \dots e_{n-1} + 1 \ , \quad n \ge 1$ 代表欧几里得数，如 $e_1 = 2, e_2 = 3 \dots$)*

$$
首先证明 e_n - \frac{1}{2} = (e_{n-1} - \frac{1}{2})^2 + \frac{1}{4} \\
\because e_n = e_1 e_2 \dots e_{n-1} + 1 = (e_{n-1} - 1) e_{n-1} + 1 \\
\therefore e_n - \frac{1}{2} = e_{n-1}^2 - e_{n-1} + \frac{1}{2} = (e_{n-1} - \frac{1}{2})^2 + \frac{1}{4} \\
$$

$$
要证 \ e_n = \lfloor E^{2^n} + \frac{1}{2} \rfloor. \ 即证 \ E^{2^n} - \frac{1}{2} < e_n \le E^{2^n} + \frac{1}{2} \\
即证 \ 2^{-n} \ln{(e_n - \frac{1}{2})} \le \ln{E} < 2^{-n} \ln{(e_n + \frac{1}{2})} \\
$$

$$
\begin{align}
2^{-n} \ln{(e_n - \frac{1}{2})} & = 2^{-n} \ln{((e_{n-1} - \frac{1}{2})^2 + \frac{1}{4})} \\
2^{-(n-1)} \ln{(e_{n-1} - \frac{1}{2})} & = 2^{-n} \ln{(e_{n-1} - \frac{1}{2})^2} \\
\Rightarrow 2^{-n} \ln{(e_n - \frac{1}{2})} & 是递增数列 \\[8pt]
又 \ \ln{(e_1 - \frac{1}{2})} & < 2^1 \ , \ \ln{(e_2 - \frac{1}{2})} < 2^2 \\
不妨猜想:\ln{(e_n - \frac{1}{2})} & < 2^n \\
下证更严格的 \ \ln{e_n} &< 2^n : \\
基础情况：\ln{e_1} &< 2^1 \\
假设 \ \ln{e_{n-1}} &< 2^{n-1} \\
则 \ \ln{e_n} &= \ln{(e_{n-1}^2 - e_{n-1} + 1)} \\
 &< \ln{e_{n-1}^2} < 2 \cdot 2^{n-1} = 2^n \\
因此：\ln{(e_n - \frac{1}{2})} &< \ln{e_n} < 2^n \\
\Rightarrow 2^{-n} \ln{(e_n - \frac{1}{2})} & 有极限\\ \\
2^{-n} \ln{(e_n + \frac{1}{2})} & = 2^{-n} \ln{(e_{n-1}^2 - e_{n-1} + \frac{3}{2})} \\
2^{-(n-1)} \ln{(e_{n-1} + \frac{1}{2})} & = 2^{-n} \ln{(e_{n-1}^2 + e_{n-1} + \frac{1}{4})} \\
\Rightarrow 2^{-n} \ln{(e_n + \frac{1}{2})} & 是递减数列 \\ \\
又 \ 2^{-n} \ln{(e_n - \frac{1}{2})} & < 2^{-n} \ln{(e_n + \frac{1}{2})} \\
存在这样的常数 E ，只要让 \ln{E} & = \lim_{n \to \infty} 2^{-n} \ln{(e_n - \frac{1}{2})} \\
\Rightarrow E & = e^{\lim_{n \to \infty} 2^{-n} \ln{(e_n - \frac{1}{2})}} \approx 1.264
\end{align}
$$

### 4.38
*证明：如果 $a \bot b$ 且 $a > b > 0$ ， 那么：*
$$
gcd(a^m - b^m , a^n - b^n) = a^{gcd(m,n)} - b^{gcd(m,n)} \ , \quad 0 \le m < n
$$
*（所有变量均为整数）提示：利用欧几里得算法。*

$$
\begin{align}
a^n - b^n &= (a^m - b^m) (a^{n-m}b^0 + a^{n-2m}b^m + \cdots \\
 &+ a^{n \bmod m} b^{(\lfloor \frac{n}{m} \rfloor - 1)m}) + b^{(\lfloor \frac{n}{m} \rfloor)m} (a^{n \bmod m} - b^{n \bmod m}) \\[8pt]
\because a & \ \bot \ b \\
\therefore gcd(a-b, b) &= gcd((a-b) \bmod b, b) \\
 &= gcd(a \bmod b, b) = 1 \\
 \Rightarrow (a-b) & \ \bot \ b \\
 令 m = 1 \ 则：a^n - b^n &= (a-b) (a^{n-1} + a^{n-2}b^1 + \cdots + b^{n-1}) \\
 \Rightarrow (a^n - b^n) & \ \bot \ b \\
 \Rightarrow (a^n - b^n) & \ \bot \ b^k \\[8pt]
下证：gcd(ma,b) &= gcd(a,b) \ , \ m \bot b \\
k = gcd(ma,b) & \Leftrightarrow k_p = \min(m_p + a_p , b_p) \ , \ 对所有 p \\
j = gcd(a,b) & \Leftrightarrow j_p = \min(a_p , b_p) \ , \ 对所有 p \\
\because m_p b_p &= 0 \ , \ 对所有 p \\
\therefore k &= j \\
\Rightarrow gcd(b^j (a^m - b^m) \ , \ (a^n - b^n)) &= gcd(a^m - b^m \ , \ a^n - b^n) \\[8pt]
\therefore gcd(a^m - b^m , a^n - b^n) &= gcd( \ (a^n - b^n) \bmod (a^m - b^m) \ , \ a^m - b^m) \\
&= gcd(\ a^{n \bmod m} - b^{n \bmod m} \ , \ a^m - b^m) \\
& \quad \vdots \\
&= a^{gcd(m,n)} - b^{gcd(m,n)}
\end{align}
$$

### 4.40
*如果 $n$ 的 $p$ 进制表示是 $(a_m \dots a_1 a_0)_p$ ，证明：*
$$
n!/p^{\varepsilon_p(n!)} \equiv (-1)^{\varepsilon_p(n!)}a_m! \dots a_1! a_0! \pmod{p}.
$$
*(左边就是 $n!$ 去掉了所有的因子 $p$ 。当 $n = p$ 时它转化为威尔逊定理)*

$$
\begin{align}
\varepsilon_p(n!) &= \lfloor \frac{n}{p} \rfloor + \lfloor \frac{n}{p^2} \rfloor + \cdots = \sum_{k \ge 1} \lfloor \frac{n}{p^k} \rfloor \\
 &= \lfloor \frac{n}{p} \rfloor + \varepsilon_p(\lfloor \frac{n}{p} \rfloor !) \\
\end{align}
$$

$$
令 f(n) = \prod_{\substack{1 \le k \le n \\ p \not \setminus k}} k = \frac{n!}{p^{\lfloor \frac{n}{p} \rfloor} (\lfloor \frac{n}{p} \rfloor)!} \\
（f(n) 是 1 到 n 中不能被 p 整除的数的连乘） \\
令 g(n) = \frac{n!}{p^{\varepsilon_p (n!)}} \\
则 g(n) = f(n) f(\lfloor \frac{n}{p} \rfloor) f(\lfloor \frac{n}{p^2} \rfloor) \dots = f(n) g(\lfloor \frac{n}{p} \rfloor) \\
$$

$$
\begin{align}
又\ f(n) &= 1 \times 2 \times \cdots \times (p-1) \\
 & \times (p+1) \times \cdots \times (2p-1) \\
 & \times \cdots \times (\lfloor \frac{n}{p} \rfloor p - 1) \\
 & \times (\lfloor \frac{n}{p} \rfloor p + 1) \times \cdots \times n \\
f(n) 等式中的前三行模 &p 的结果相等，为： (p-1)! \bmod p \\
最后一行模 p 为： & (n \bmod p)! \bmod p \\
若将 n 表示为 (a_m \dots \ & a_1 \ a_0)_p \ 则 \lfloor \frac{n}{p} \rfloor = (a_m \dots \ a_1)_p \\
因此：n \bmod p &= n - p \lfloor \frac{n}{p} \rfloor = a_0 \\
\Rightarrow f(n) & \equiv a_0! (p-1)!^{\lfloor \frac{n}{p} \rfloor} \pmod{p} \\
由威尔逊定理，有：\\
f(n) & \equiv a_0! (-1)^{\lfloor \frac{n}{p} \rfloor} \pmod{p} \\
\end{align}
$$

$$
又因为 \lfloor \frac{n}{p} \rfloor = (a_m \dots a_1)_p \\
所以 f(\lfloor \frac{n}{p} \rfloor) \equiv a_1!(-1)^{\lfloor \frac{n}{p^2} \rfloor} \pmod{p} \\
综上： g(n) \equiv a_0! a_1! \dots a_m! (-1)^{\varepsilon_p(n!)} \pmod{p}
$$

### 4.46
*a. 证明：如果 $n^j \equiv 1$ 且 $n^k \equiv 1 \pmod{m}$ ，那么 $n^{\gcd{(j ,k)}} \equiv 1$.*  
*b. 证明：如果 $n > 1$ ，则 $2^n \not\equiv 1 \pmod{n}$ 。提示：考虑 $n$ 的最小素因子。*

a. 不妨令 $j<k$ ：
$$
\because n^j \equiv n^k \pmod{m} \\
由公式：ad \equiv bd \pmod{m} \\
 \Leftrightarrow a \equiv b \pmod{\dfrac{m}{\gcd{(d, m)}}} \ , \ a, b, d, m \ 为整数. \\
\therefore 1 \equiv n^{k-j} \pmod{\dfrac{m}{\gcd{(m, n^j)}}} \\
\begin{align}
又 \ \gcd{(m, n^j)} &= gcd{(n^j \bmod m, m)} \\
&= \gcd{(1, m)} \\
&= 1 \\
\therefore n^{k-j} &\equiv 1 \pmod{m} \\
& \ \ \vdots \\
n^{k - j \lfloor \frac{k}{j} \rfloor} &\equiv 1 \pmod{m} \\ \Leftrightarrow n^{k \bmod j} &\equiv 1 \pmod{m} \\
& \ \ \vdots \\
\Rightarrow n^{\gcd{(j, k)}} &\equiv 1 \pmod{m}
\end{align}
$$

b. 设 $n = pq$ ，其中 $p$ 为最小素因子
$$
假设 \ 2^n \equiv 1 \pmod{n} \\
由公式：a \equiv b \pmod{md} \Rightarrow a \equiv b \pmod{m} \ , \ d \ 是整数. \\
\Rightarrow 2^n \equiv 1 \pmod{p} \\
由费马小定理：2^{p-1} \equiv 1 \pmod{p} \ , \ 2 \ \bot \ p . \\
由 \ a \ 知：2^{\gcd{(p-1, n)}} \equiv 1 \pmod{p} \\
由 \ p \ 定义知：\gcd{(p-1, n)} = 1 \\
矛盾：2 \equiv 1 \pmod{p} \\
故假设不成立
$$

### 4.47
*证明：如果 $n^{m-1} \equiv 1 \pmod{m}$ ，且对所有满足 $p \setminus (m-1)$ 的素数都有 $n^{(m-1) / p} \not\equiv 1 \pmod{m}$ ，那么 $m$ 是素数。提示：证明，如果这个条件成立，那么对 $1 \leqslant k < m$ ，$n^k \bmod m$ 都是各不相同的。*

$$
若 \ n^{m-1} \equiv 1 \pmod{m} \\
则 \ \gcd{(n^{m-1}, m)} = \gcd{(n^{m-1} \bmod m, m)} = 1 \\
即 \ n \ \bot \ m \\
如果对于 \ 1 \leq j < k < m \ 有 \ n^k \equiv n^j \\
则 \ n^{k-j} \equiv 1 \\
假设 \ 对于 1 \leqslant k < m \ , \ n^k \bmod m \ 不是各不相同的 \\
则存在满足 \ n^k \equiv 1 \ 的 \ k \ 且 \ k < m-1 \\
由 4.46(a) 知：最小的这样的 \ k \ 整除 \ m-1 \\
即存在素数 p 和正整数 q 有：kq = (m-1) / p \ ，而这与 n^{kq} \not\equiv 1 矛盾 \\
于是假设不成立，诸数各不相同，且与 \ m \ 互素，故 \ m \ 为素数
$$

### 4.51
*通过用多项定理展开 $(1+1+\dots+1)^p$ 来证明费马定理 $n^p \equiv n \pmod{p} \ , \ n是整数$.*

$$
多项式定理：(x_1 + x_2 + \cdots + x_n)^p = \sum_{k_1 + k_2 + \cdots + k_n = p} \frac{p!}{k_1! \dots k_n!} x_1^{k_1} x_2^{k_2} \dots x_n^{k_n} \\
当某个 k_j = p 时，系数为1 \\
当所有 k_j < p 时，系数可以被 p 整除 \\
因此：(x_1 + x_2 + \cdots + x_n)^p \equiv x_1^{p} + x_2^{p} + \cdots + x_n^{p} \pmod{p} \\
当所有 x = 1 时，有：n^p \equiv n \pmod{p}
$$

### 4.54
*手工计算，确定 $1000! \bmod 10^{250}$ 的值。*

$$
\begin{align}
\varepsilon_p (1000!) &= \sum_{k \ge 1} \lfloor \frac{n}{p^k} \rfloor \\
\Rightarrow \varepsilon_2(1000!) &> 500 \\
\varepsilon_5(1000!) &= 249 \\
\end{align}
$$

$$
因此能整除 1000! 的 10 的最大幂为 249 \\
且 1000! 可表示为 a \cdot 10^{249} \ , \ 其中 a 为偶数 \\
将 1000 表示为 (13 \ 000)_5 \\
则由 4.40 知 \frac{1000!}{5^{249}} \equiv -6 \pmod{5} \\
\Rightarrow a \cdot 2^{249} \equiv 4 \pmod{5} \\
用数学归纳法可证：2^{4k} \bmod 5 = 1 \\
\therefore 1 \equiv 2^{248} \pmod{5} \\
\Rightarrow a \cdot 2^{249} \equiv 2 \cdot 2^{249} \pmod{5} \\
\xrightarrow{2^{249} \bot 5} a \equiv 2 \pmod{5} \\
\Rightarrow a \bmod 10 = 2 或者 7 \\
因为 a 是偶数，所以 10^{249} (a \bmod 10 ) = 2 \times 10^{249} \\
即：1000! \bmod 10^{250} = 2 \times 10^{249}
$$
