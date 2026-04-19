## 习题三

### 3.1
*在第一章分析约瑟夫问题时，将任意的一个正整数 $n$ 表示成了 $n=2^m+l$ 的形式，其中 $0 \le l < 2^m$ 。请利用底括号或顶括号，给出将 $l$ 和 $m$ 表示成为 $n$ 的函数的显式公式*

$$
\begin{align}
\because n &= 2^m + l \\
\therefore m &= \lfloor lg \ n \rfloor \\
 l &= n - 2^m \\
  &= n - 2^{\lfloor lg \ n \rfloor}
\end{align}
$$

### 3.2
*与一个给定实数 $x$ 距离最近的整数的公式是什么？在对等情况下，$x$ 恰好在两个整数的中间位置，请给出一个表达式，它（ $a$ ）往上舍入成整数，即成为 $\lceil x \rceil$ ;（ $b$ ）向下舍入成整数，即成为 $\lfloor x \rfloor$ 。*  

不失一般性，假设 $x$ 位于 $n$ 和 $n+1$ 之间。  
$a$ 种情况下，仅当 $x \in [n,n+0.5)$ 时，答案是 $n$ ，否则为 $n+1$ ，因此将 $x$ 加上0.5再向下取整。  
$b$ 种情况下，仅当$x \in [n,n+0.5]$ 时，答案是 $n$ ，否则为 $n+1$ ，因此将 $x$ 减去0.5再向上取整。
$$
a. \lfloor x + 0.5 \rfloor \\
b. \lceil x - 0.5 \rceil
$$

### 3.3
*当 $m$ 和 $n$ 是正整数，且 $\alpha$ 是大于 $n$ 的无理数时，计算 $\lfloor \lfloor m \alpha \rfloor n / \alpha \rfloor$*

$$
\begin{align}
沿用书中的记号，& 以 \{x\} 代表 x 的小数部分，即 \{x\} = x - \lfloor x \rfloor \\
m \alpha & = \lfloor m \alpha \rfloor + \{ m \alpha \}, \quad 0 < \{ m \alpha \} < 1\\
\Rightarrow
\lfloor \frac{\lfloor m \alpha \rfloor n}{\alpha} \rfloor & = \lfloor \frac{mn \alpha - n \{m \alpha \}}{\alpha} \rfloor \\
& = \lfloor mn - \frac{n \{m \alpha\}}{\alpha} \rfloor \\
\xrightarrow{0< \frac{n}{\alpha} ,\{ m \alpha \} < 1}
& = mn - 1
\end{align}
$$

### 3.5
*当 $n$ 是正整数时，求使得 $\lfloor n x \rfloor = n \lfloor x \rfloor$ 成立的必要充分条件。（你的条件应该包含 $\{x\}$ ）*

$$
\begin{align}
nx & = n \lfloor x \rfloor + n \{ x \} \\
\Rightarrow
\lfloor nx \rfloor & = n \lfloor x \rfloor + \lfloor n \{ x \} \rfloor  \xrightarrow{\lfloor n \{ x \} \rfloor = 0} \lfloor n x \rfloor = n \lfloor x \rfloor \\
\lfloor n \{ x \} \rfloor = 0 & \Leftrightarrow 0 \le n \{ x \} < 1 \Leftrightarrow 0 \le \{ x \} < \frac{1}{n} \\
因此，当且仅当 & 0 \le \{ x \} < \frac{1}{n}，\lfloor n x \rfloor = n \lfloor x \rfloor 成立。
\end{align}
$$

### 3.6
*当 $f(x)$ 是仅当 $x$ 为整数时才取整数值的连续单调递减函数时，关于 $\lfloor f(x) \rfloor$ 有什么可谈的吗？*
$$
\begin{gather}
仿照书中的证明，不妨大胆地猜想 \lfloor f(x) \rfloor = \lfloor f( \lceil x \rceil) \rfloor \\
证明：
如果 x = \lceil x \rceil ，显然成立。如若不然，有 x < \lceil x \rceil ，\\ 于是 f(x) > f(\lceil x \rceil) ，因此\lfloor f(x) \rfloor \ge \lfloor f(\lceil x \rceil) \rfloor . 如果\lfloor f(x) \rfloor > \lfloor f(\lceil x \rceil) \rfloor， \\ 必定存在一个数 y ，使得 x \le y < \lceil x \rceil 以及 f(y)=\lfloor f(x) \rfloor，因为 f(x) 是连续的。\\
由于 f(x) 的性质，y一定是一个整数，但是在\lfloor x \rfloor  与 \lceil x \rceil 之间不存在额外的整数，矛盾。\\
因此，\lfloor f(x) \rfloor = \lfloor f(\lceil x \rceil) \rfloor \\
同样可证：\lceil f(x) \rceil = \lceil f( \lfloor x \rfloor) \rceil
\end{gather}
$$

### 3.7
*解递归式*
$$
X_n = n \ , \quad 0 \le n < m \\
X_n = X_{n-m}+1 \ , \quad n \ge m
$$

不妨列出部分 $X_n$ 的值：
|n |0 |1 |2 |3 |$\dots$ |m-1 |m |m+1 |$\dots$ |2m |2m+1 |$\dots$ |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
|$X_n$ |0 |1 |2 |3 |$\dots$ |m-1 |1 |2 |$\dots$ |2 |3 |$\dots$ |

由此可以发现 $X_n$ 的规律并写出表达式： $X_n = n\ mod\ m + \lfloor \frac{n}{m} \rfloor$

### 3.8
*证明狄利克雷抽屉原理：如果 $n$ 个物体放进 $m$ 个盒子中，那么某个盒子中必定含有 $\ge \lceil n/m \rceil$ 个物体，且有某个盒子中必定含有 $\le \lfloor n/m \rfloor$ 个物体。*

反证法：假设所有盒子中含有 $< \lceil \frac{n}{m} \rceil$ 个物体，也即含有 $\le ( \lceil \frac{n}{m} \rceil -1)$ 个物体，因此，总共 $m$ 个盒子一共含有 $\le m (\lceil \frac{n}{m} \rceil -1)$ 个物体，有： $\frac{n}{m} + 1 \le \lceil \frac{n}{m} \rceil$ ，矛盾，假设不成立，即证某个盒子中必定含有 $\ge \lceil n/m \rceil$ 个物体。  
同理可证某个盒子中必定含有 $\le \lfloor n/m \rfloor$ 个物体。

### 3.10
*证明，表达式*
$$
\lceil \frac{2x+1}{2} \rceil - \lceil \frac{2x+1}{4} \rceil + \lfloor \frac{2x+1}{4} \rfloor
$$
*总是等于 $\lfloor x \rfloor$ 或者 $\lceil x \rceil$ ，每一种情形在何时会出现？*

$$
\begin{align}
\lceil \frac{2x+1}{2} \rceil - \lceil \frac{2x+1}{4} \rceil + \lfloor \frac{2x+1}{4} \rfloor & = \lceil \frac{2x+1}{2} \rceil - ( \lceil \frac{2x+1}{4} \rceil - \lfloor \frac{2x+1}{4} \rfloor) \\
 & = \lceil (x + \frac{1}{2}) \rceil - [\frac{2x+1}{4} 不是整数] \\
 & =
 \begin{cases}
  \lceil x \rceil \ , \quad \{x\} > 0.5 \lor (\lceil x \rceil 是偶数 \land \{x \} = 0.5)\\
  \lfloor x \rfloor \ , \quad \{x\} < 0.5 \lor (\lfloor x \rfloor 是偶数 \land \{x \} = 0.5)
 \end{cases}
\end{align}
$$

### 3.11
*给出正文中提及的证明细节：当 $\alpha < \beta$ 时，开区间 $(\alpha , \beta)$ 恰好包含 $\lceil \beta \rceil - \lfloor \alpha \rfloor -1$ 个整数。为使证明正确，为什么 $\alpha = \beta$ 的情形必须排除在外？*

$$
\begin{align}
\alpha 和 \beta 是任意实数且 \alpha < \beta ，当 n 是整数时，有：\alpha < n < \beta \Leftrightarrow \lfloor \alpha \rfloor < n < \lceil \beta \rceil ，\\ 因此 n 的个数为 \lceil \beta \rceil - \lfloor \alpha \rfloor - 1 。若 \alpha = \beta ，则 \lceil \beta \rceil - \lfloor \alpha \rfloor - 1 = -1 ， \\ 而事实上，此时的开区间内没有整数，因此将 \alpha = \beta 排除在外。
\end{align}
$$

### 3.12
*证明，对所有整数 $n$ 和所有正整数 $m$ 有*
$$
\lceil \frac{n}{m} \rceil = \lfloor \frac{n+m-1}{m} \rfloor
$$
*（这个恒等式给出了另一种将顶与底相互转化的方法，它用不到反射律）*  

证明：
$$
\begin{align}
设 n = qm + r  \ , \quad  q & = \lfloor \frac{n}{m} \rfloor \ , \quad  r = n \ mod \ m \\
\lceil \frac{n}{m} \rceil & =  q + \lceil \frac{r}{m} \rceil \\
\lfloor \frac{n+m-1}{m} \rfloor & = q + 1 + \lfloor \frac{r-1}{m} \rfloor \\
\because r \in \mathbb{Z} & \land r \in [0,m) \\
\therefore \lceil \frac{r}{m} \rceil & = 1 + \lfloor \frac{r-1}{m} \rfloor \\
\Rightarrow
\lceil \frac{n}{m} \rceil & = \lfloor \frac{n+m-1}{m} \rfloor \\
\end{align}
$$
另：
$$
\begin{gather}
由书中的证明知：将 n 分成 m 个按照非增次序排列且尽可能相等的部分的划分为： \\
n  = \lceil \frac{n}{m} \rceil + \lceil \frac{n-1}{m} \rceil + \dots + \lceil \frac{n-m+1}{m} \rceil \\
而将 n 分成 m 个按照非减的次序排列： \\
n = \lfloor \frac{n}{m} \rfloor + \lfloor \frac{n+1}{m} \rfloor + \dots + \lfloor \frac{n+m-1}{m} \rfloor \\
这两种排列方式正好是相反的，因此有：\lceil \frac{n}{m} \rceil = \lfloor \frac{n+m-1}{m} \rfloor
\end{gather}
$$

### 3.14
*证明或推翻： $(x \ mod \ ny) \ mod \ y =x \ mod \ y \ , \quad n为整数$*

$$
\begin{align}
如果 n = 0 \ , \quad x \ mod \ 0 &  = x \\
\Rightarrow
(x \ mod \ ny) \ mod \ y & = x \ mod \ y \\
如果 n \neq 0 \ , \quad x \ mod \ ny &= x - ny \lfloor \frac{x}{ny} \rfloor \\
\Rightarrow
(x \ mod \ ny) \ mod \ y  & = (x - ny \lfloor \frac{x}{ny} \rfloor) \ mod \ y \\
& = (x - ny \lfloor \frac{x}{ny} \rfloor) - y (\lfloor (\frac{x}{y} - n \lfloor \frac{x}{ny} \rfloor) \rfloor) \\
& = (x - ny \lfloor \frac{x}{ny} \rfloor) - y (\lfloor \frac{x}{y} \rfloor -n \lfloor \frac{x}{ny} \rfloor) \\
& = x - y \lfloor \frac{x}{y} \rfloor \\
& = x \ mod \ y
\end{align}
$$

### 3.15
*存在与*
$$
\lfloor mx \rfloor = \lfloor x \rfloor + \lfloor x + \frac{1}{m} \rfloor + \dots + \lfloor x + \frac{m-1}{m} \rfloor
$$
*类似的用顶替代底的恒等式吗？*

$$
已知：n = \lceil \frac{n}{m} \rceil + \lceil \frac{n-1}{m} \rceil + \dots + \lceil \frac{n-m+1}{m} \rceil \\
用 \lceil mx \rceil 替换 n ，得到：\\
\lceil mx \rceil = \lceil x \rceil + \lceil x - \frac{1}{m} \rceil + \dots + \lceil x - \frac{m-1}{m} \rceil
$$

### 3.16
*证明 $n \ mod \ 2 = (1 - (-1)^n )/2.$ 对 $n \ mod \ 3$ 求出并证明类似的形如 $a + b \omega^n + c \omega^{2n}$ 的表达式，其中 $\omega$ 是复数 $(-1 + i \sqrt{3} ) / 2$ 。提示： $\omega^3 = 1$ 且 $1 + \omega + \omega^2 = 0$*

$$
n 无非是两种情况：n = 2k 或 n = 2k+1 , 其中 k \in \mathbb{Z} \\
如果 n = 2k ，则 n \ mod \ 2 = \frac{1-(-1)^{2k}}{2} = 0 \\
如果 n = 2k+1 ，则 n \ mod \ 2 = \frac{1-(-1)^{2k+1}}{2} = 1 \\
无论哪种情况等式均成立。
$$
同理：
$$
\begin{align}
当 n = 3k 时，n \ mod \ 3 & = a + b \omega^{3k} + c \omega^{6k} = 0 \\
& = a + b + c = 0 \\
当 n = 3k+1 时，n \ mod \ 3 & = a + b \omega^{3k+1} + c \omega^{6k+2} = 1 \\
& = a + b \omega + c \omega^2 = 1\\
当 n = 3k+2 时，n \ mod \ 3 & = a + b \omega^{3k+2} + c \omega^{6k+4} = 2 \\
& = a + b \omega^2 + c \omega =2 \\
联立方程组，解出：a & = 1 \\
b & =  \frac{\omega^2}{2\omega + 1} \xrightarrow{上下同乘 \frac{\omega - 1}{\omega}} \frac{\omega - 1}{3} \\
c &= \frac{- \omega}{2 \omega + 1} \xrightarrow{上下同乘 \omega + 2} \frac{-(\omega + 2)}{3} \\
\Rightarrow n \ mod \ 3 & = 1 + \frac{1}{3} ((\omega - 1) \omega^n - (\omega + 2) \omega^{2n})
\end{align}
$$

### 3.17
*在 $x \ge 0$ 的情况下，通过用 $\sum_{j} [1 \le j \le x + k/m]$ 替换 $\lfloor x + k/m \rfloor$ 并首先对 $k$ 求和，来计算和式 $\sum_{0 \le k < m} \lfloor x + k/m \rfloor$ 。你的答案与 $\lfloor mx \rfloor = \lfloor x \rfloor + \lfloor x + \frac{1}{m} \rfloor + \dots + \lfloor x + \frac{m-1}{m} \rfloor$吻合吗？*

$$
\begin{align}
\sum_{\substack{0 \le k < m}} \lfloor x + \frac{k}{m} \rfloor & = \sum_{\substack{k}} [ 0 \le k < m] \sum_{\substack{j}} [1 \le j \le x + \frac{k}{m}] \\
& = \sum_{\substack{j,k}}[1 \le j \le \lceil x \rceil] [0 \le k < m][k \ge (j-x)m] \\
\because \ & j \in \mathbb{Z} \ \land \ j \le \lceil x \rceil \ \land \ \lceil x \rceil -1 < x \\
\therefore \ & = \sum_{\substack{1 \le j \le \lceil x \rceil}} \sum [0 \le k < m] - \sum_{\substack{j = \lceil x \rceil}} \sum [0 \le k < m(j-x)] \\
& = m \lceil x \rceil - \lceil m \lceil x \rceil - mx \rceil \\
& = \lfloor mx \rfloor
\end{align}
$$

### 3.19
*求出关于实数 $b > 1$ 的一个必要充分条件，使得*
$$
\lfloor \log_b{x} \rfloor = \lfloor \log_b{\lfloor x \rfloor} \rfloor
$$
*对所有实数 $x \ge 1$ 都成立*

$$
\begin{align}
令 m = \lfloor \log_b{x} \rfloor & \Leftrightarrow m \le \log_b{x} < m+1 \\
& \Leftrightarrow b^m \le x < b^{m+1} \\
& \xrightarrow{b^m是整数} \lfloor x \rfloor = b^m
\end{align}
$$
因此，要想对所有实数 $x \ge 1$ 等式都成立，b必须为整数，才能保证 $b^m$ 始终为整数

$$
\begin{gather}
另：因为 b > 1 ，所以 \log_b{x} 是在 x \ge 1 内连续的单调递增函数，\\ 由书中已证的性质知：若 f(x) 是在一个实数区间内连续的单调递增函数，\\ 且满足: f(x) = 整数 \Rightarrow x = 整数 ，于是，只要 f(x)，f(\lfloor x \rfloor)，f(\lceil x \rceil) 有定义 \\
就有：\lfloor f(x) \rfloor = \lfloor f( \lfloor x \rfloor) \rfloor 和 \lceil f(x) \rceil = \lceil f(\lceil x \rceil) \rceil \\
由此可证：b必须为整数
\end{gather}
$$

### 3.20
*当 $x>0$ 时，求闭区间 $[\alpha \dots \beta]$ 中 $x$ 的所有倍数之和*

$$
\lceil \frac{\alpha}{x} \rceil 代表闭区间中首个 x 的倍数 \\
\lfloor \frac{\beta}{x} \rfloor 代表闭区间中最后一个 x 的倍数 \\
因此有：\sum_{k=\lceil \frac{\alpha}{x} \rceil}^{\lfloor \frac{\beta}{x} \rfloor} kx = \frac{x}{2} ((\lfloor \frac{\beta}{x} \rfloor)^2 + \lfloor \frac{\beta}{x} \rfloor -(\lceil \frac{\alpha}{x} \rceil)^2 + \lceil \frac{\alpha}{x} \rceil)
$$

### 3.21
*对 $0 \le m \le M$ ，有多少个数 $2^m$ 的十进制表示中，其首位数字为1？*

$$
在十进制表示中，如果首位数字为1,对应该数字为10的幂 \\
而在[10^n, 2*10^n)中一共有(\lceil \lg{2} + n \lg{10} \rceil - \lceil n \lg{10} \rceil)个2的幂，即一个2的幂 \\
问题即转换为：对于0 \le m \le M，2^m中有多少个10的幂？ \\
因此答案为：\lfloor \log{2^M} \rfloor + 1
$$

### 3.22
*计算和式 $S_n = \sum_{k \ge 1} \lfloor n/2^k + \frac{1}{2} \rfloor$ 以及 $T_n = \sum_{k \ge 1} 2^k \lfloor n/2^k + \frac{1}{2} \rfloor^2.$*

$$
\begin{gather}
不失一般性，讨论 S_n 和 S_{n-1} 的关系：\\
将 n 分解成 2^{r-1}p \ , (r是正整数，p是奇数) \\
因此 S_n 的通项为 \lfloor \frac{1}{2} (2^{r-k} p + 1) \rfloor \ , S_{n-1} 的通项为 \lfloor \frac{1}{2} (2^{r-k} p + 1) - \frac{1}{2^k} \rfloor \\
当 k=r 时，S_n 的第 r 项会比 S_{n-1} 的第 r 项大1 \\
而当 k \neq r 时，两者内部差为 \frac{1}{2^k} 可以忽略不计，对应项相等\\
综上：S_n - S_{n-1} = 1 \\
由 S_1 = 1 \ , S_2 = 2 \ , 运用数学归纳法易证：S_n = n
\end{gather}
$$
$$
\begin{align}
同理：T_n - T_{n-1} & = 2^r \lfloor \frac{1}{2} (p+1) \rfloor^2 - 2^r \lfloor \frac{1}{2} (p+1) - \frac{1}{2^r} \rfloor^2 \\
& = 2^r ( \frac{1}{4} (p+1)^2 - (\frac{1}{2} (p+1) - 1)^2) \\
& = 2^r p\\
& = 2^r \frac{n}{2^{r-1}} = 2n \\
\Rightarrow T_n & = n(n+1)
\end{align}
$$

### 3.23
*证明序列*
$$
1,2,2,3,3,3,4,4,4,4,5,5,5,5,5, \dots
$$
*的第 $n$ 个元素是 $\lfloor \sqrt{2n} + \frac{1}{2} \rfloor$ （这个序列恰好包含 $m$ 个 $m$）*

$$
\begin{gather}
假设 S_n = k ,(n,k为整数),则值为 k 的序列下标 n 应满足: \\
\frac{1}{2} k (k-1) < n \le \frac{1}{2} k (k-1) + k \\
\Leftrightarrow k(k-1) < 2n \le k(k+1) \\
\Leftrightarrow (k - \frac{1}{2})^2 < 2n < (k + \frac{1}{2})^2 \\
\Leftrightarrow k < \sqrt{2n} + \frac{1}{2} < k + 1 \\
因此 k = \lfloor \sqrt{2n} + \frac{1}{2} \rfloor
\end{gather}
$$

### 3.25
*证明或推翻：对所有非负的 $n$ ，由*
$$
K_0 = 1 \\
K_{n+1} = 1 + min(2K_{\lfloor n/2 \rfloor},3K_{\lfloor n/3 \rfloor}) \ , n \ge 0
$$
*所定义的高德纳数满足 $K_n \ge n$.*

$$
\begin{gather}
假设存在 n' = m+1 使得 K_{n'} < n' 成立 \\
即 1 + min (2K_{\lfloor \frac{m}{2} \rfloor} \ , 3K_{\lfloor \frac{m}{3} \rfloor}) < m + 1 \\
因此也存在 m 使得 K_{\lfloor \frac{m}{2} \rfloor} < \frac{m}{2} 或者 K_{\lfloor \frac{m}{3} \rfloor} < \frac{m}{3} 成立 \\
这样向下递推，最后必然有：K_0 < 1 ，与已知矛盾 ，故假设不成立
\end{gather}
$$

### 3.26
*证明：辅助的约瑟夫数满足：*
$$
(\frac{q}{q-1})^n \le D_n^{(q)} \le q (\frac{q}{q-1})^n \ , \quad n \ge 0
$$

辅助的约瑟夫数：
$$
D_0^{(q)} = 1 \\
D_n^{(q)} = \lceil \frac{q}{q-1} D_{n-1}^{(q)} \rceil \ , \quad n > 0
$$
在辅助的约瑟夫数中，$q$ 应该是正整数.

用数学归纳法证明：  
第一个 $\le$ 号：
$$
假设 (\frac{q}{q-1})^{n-1} \le D_{n-1}^{(q)} \\
则： D_n^{(q)} = \lceil \frac{q}{q-1} D_{n-1}^{(q)} \rceil \ge \lceil (\frac{q}{q-1})^n \rceil \ge (\frac{q}{q-1})^n
$$
第二个 $\le$ 号：
$$
假设 D_{n-1}^{(q)} \le q (\frac{q}{q-1})^{n-1} - (q - 1) \le q (\frac{q}{q-1})^{n-1} \\
D_n^{(q)} = \lceil \frac{q}{q-1} D_{n-1}^{(q)} \rceil \le \lceil q (\frac{q}{q-1})^n - q \rceil \\
\Leftrightarrow D_n^{(q)} \le q(\frac{q}{q-1})^n + 1 - q \le q (\frac{q}{q-1})^n
$$

### 3.30
*证明：如果 $m$ 是一个大于2的整数，其中 $\alpha + \alpha^{-1} = m$ 且 $\alpha > 1$，那么递归式*
$$
\begin{align}
X_0 &= m \\
X_n &= X_{n-1}^2 - 2 \ , \quad n > 0
\end{align}
$$
*有解 $X_n = \lceil \alpha^{2^n} \rceil.$ 例如，如果 $m=3$, 则解为：*
$$
X_n = \lceil \phi^{2^{n+1}} \rceil \ , \quad \phi = \frac{1+\sqrt{5}}{2} \ , \quad \alpha = \phi^2
$$

利用 $\alpha$ 和 $m$ 的关系，写出 $X_n$ 的前几项：
$$
\begin{align}
X_0 & = \alpha + \alpha^{-1} \\
X_1 & = \alpha^2 + \alpha^{-2} \\
X_2 & = \alpha^4 + \alpha^{-4} \\
\vdots
\end{align}
$$
如此一来，不妨大胆地猜测： $X_n = \alpha^{2^n} + \alpha^{-2^{n}}$  
再利用数学归纳法证明这一结论：
$$
假设 X_{n-1} = \alpha^{2^{n-1}} + \alpha^{-2^{n-1}} \\
则 X_n = X_{n-1}^2 -2 = \alpha^{2^n} + \alpha^{-2^{n}}
$$
又 $\alpha > 1$ ，所以 $\alpha^{-2^{n}} < 1$；$m$ 是整数，所以递归式的每一项 $X_n$ 也必然是整数  
因此 $X_n = \lceil \alpha^{2^n} \rceil$

### 3.31
*证明或推翻： $\lfloor x \rfloor + \lfloor y \rfloor + \lfloor x+y \rfloor \le \lfloor 2x \rfloor + \lfloor 2y \rfloor.$*

$$
首先证明：\lfloor x \rfloor + \lfloor x + \frac{1}{2} \rfloor = \lfloor 2x \rfloor \\
可以分两种情况考虑：\\
1. x 的小数部分小于 0.5 \\
此时左边 = 2 \lfloor x \rfloor = 右边 \\
2. x 的小数部分不小于 0.5 \\
此时左边 = 2 \lfloor x \rfloor + 1 = 右边 \\
同理可证：\lfloor x \rfloor \le \frac{1}{2} \lfloor 2x \rfloor \\ \\
接着：\because 2x < \lfloor 2x \rfloor + 1 \\
\therefore x < \frac{1}{2} \lfloor 2x \rfloor + \frac{1}{2}
$$

$$
\begin{align}
因此：\lfloor x \rfloor + \lfloor y \rfloor + \lfloor x+y \rfloor & = \lfloor x + \lfloor y \rfloor \rfloor + \lfloor x + y \rfloor \\
& \le \lfloor x + \frac{1}{2} \lfloor 2y \rfloor \rfloor + \lfloor x + \frac{1}{2} \lfloor 2y \rfloor + \frac{1}{2} \rfloor \\
& = \lfloor 2x + \lfloor 2y \rfloor \rfloor = \lfloor 2x \rfloor + \lfloor 2y \rfloor
\end{align}
$$

### 3.34
*设 $f(n) = \sum_{k=1}^n \lceil \lg{k} \rceil.$*
$$
\begin{align}
a. \quad & 当 n \ge 1时，求 f(n) 的封闭形式 \\
b. \quad & 证明：对所有 n \ge 1 有 f(n) = n - 1 + f(\lceil n/2 \rceil) + f(\lfloor n/2 \rfloor)
\end{align}
$$

$a.$
$$
\begin{align}
f(n) & = \sum_{\substack{j, k}} j [j = \lceil \lg{k} \rceil] [1 \le k \le n] \\
f^\star (n) & = \sum_{\substack{j, k}} j [2^{j-1} < k \le 2^j] [0 \le j \le \lceil \lg{n} \rceil] \\
& = \sum_{\substack{j, k}} j 2^{j-1} [0 \le j \le \lceil \lg{n} \rceil] \\
& = \sum_{j=0}^{\lceil \lg{n} \rceil} j 2^{j-1} \\
2f^\star (n) & = \sum_{j=0}^{\lceil \lg{n} \rceil} j 2^j \\
\Rightarrow f^\star (n) & = \lceil \lg{n} \rceil 2^{\lceil \lg{n} \rceil} - 2^{\lceil \lg{n} \rceil} + 1 \\
然而，验算之后 & 就会发现，f^\star (n) 并不是正确答案 \\
原因在于 j & = \lceil \lg{k} \rceil 并不是双射函数， \\
因此从 1 \le k \le n & 到 0 \le j \le \lceil \lg{n} \rceil 之间少掉了一些值 \\
正确的答案应该是：f(n) & = f^\star (n) +  (n - 2^{\lceil \lg{n} \rceil}) \lceil \lg{n} \rceil\\
& = n \lceil \lg{n} \rceil - 2^{\lceil \lg{n} \rceil} + 1
\end{align}
$$

$b.$
$$
\begin{align}
因为 n 是 & 正整数，所以\frac{n}{2} 取整的结果和 n 的奇偶性密切相关 \\
因此，分 & 奇偶来讨论等式：\\
1. \quad n & = 2m \ , m \in \mathbb{Z^+} \\
不妨设 & k = \lceil \lg{2m} \rceil \ , k \ge 1 \\
\Leftrightarrow & \lg{2m} \le k < (\lg{2m}) + 1 \\
\Leftrightarrow & \lg{m} + 1 \le k < (\lg{m}) + 2 \\
\Leftrightarrow & \lg{m} \le k-1 < (\lg{m}) + 1 \\
\Leftrightarrow & \lceil \lg{m} \rceil = k-1 \\
f(n) = f(2m) & = 2m k - 2^k + 1 \\
f(\lceil \frac{n}{2} \rceil) = f(\lfloor \frac{n}{2} \rfloor) & = f(m) = m (k-1) - 2^{k-1} + 1 \\
\Rightarrow 等式右侧 & = 2m - 1 + 2 f(m) = 2mk - 2^k + 1 = f(n) \\ \\
2. \quad n & = 2m + 1 \ , m \in \mathbb{Z} \\
不妨设 & k = \lceil \lg{(2m + 1)} \rceil \\
\Leftrightarrow & \lg{(2m+1)} \le k < \lg{(2m+1)} + 1 \\
\Leftrightarrow & \lg{(m + \frac{1}{2})} \le k - 1 < \lg{(m + \frac{1}{2})} + 1 \\
\Leftrightarrow & \lceil \lg{(m + \frac{1}{2})} \rceil = k-1 \\
m = 0 时 & ，f(1) = f(1) \\
m \in \mathbb{Z^+} & \Rightarrow \lceil\lg{(m + 1)} \rceil = \lceil \lg{(m + \frac{1}{2})} \rceil = k - 1 \\
\therefore f(\lceil \frac{n}{2} \rceil) & =  f(m+1) = (m+1) (k-1) - 2^{k-1} + 1 \\
当 m = 2^l \ , (l \in \mathbb{Z})时 & \quad \lceil \lg{m} \rceil = \lceil \lg{(m + \frac{1}{2})} \rceil - 1 = k - 2 = l \\
f(\lfloor \frac{n}{2} \rfloor) & = f(m) = ml - 2^l + 1 \\
\Rightarrow n - 1 + f(m) + f(m+1) & = 2ml + l + 3 = f(n) \\
当 m \neq 2^l \ , (l \in \mathbb{Z})时 & \quad \lceil \lg{m} \rceil = \lceil \lg{(m + \frac{1}{2})} \rceil = k -1 \\
\Rightarrow n - 1 + f(m) + f(m+1) & = 2mk + k - 2^k + 1 = f(n) \\
\end{align}
$$
综上所述：对所有 $n \ge 1$ 有 $f(n) = n - 1 + f(\lceil n/2 \rceil) + f(\lfloor n/2 \rfloor).$
### 3.35
*化简公式 $\lfloor (n+1)^2 \ n! \ e \rfloor \ mod \ n$.*

$$
\begin{align}
e & = \sum_{x=0}^{\infty}\frac{1}{x!} \\
原式 & \Rightarrow \lfloor (n+1)^2 n! (\frac{1}{0!} + \frac{1}{1!} + \dots + \frac{1}{(n-1)!}) + n^2 + 3n + \\
& + 2 + \\
& + \frac{(n+1)^2 n!}{(n+2)!} + \frac{(n+1)^2 n!}{(n+3)!} + \dots \rfloor \ mod \ n \\
将 & 公式分成三部分（第1，2，3行） \\
第 & 一部分都是 n 的倍数 \\
第 & 二部分是2 \\
第 & 三部分 = \frac{(n+1)}{(n+2)} + \frac{(n+1)}{(n+2)(n+3)} + \dots \\
& = \frac{n+1}{n+2} (1 + \frac{1}{n+3} + \frac{1}{(n+3)(n+4)} + \dots) \\
& < \frac{n+1}{n+2} (1 + \frac{1}{(n+3)^1} + \frac{1}{(n+3)^2} + \dots) \\
& = \frac{(n+1)(n+3)}{(n+2)^2} < 1 \\
因此原式 & 可化为：2 \ mod \ n
\end{align}
$$

### 3.45
*如果 $m$ 是一个正整数，推广习题30的技巧来求*
$$
\begin{align}
Y_0 &= m \\
Y_n &= 2 Y_{n-1}^2 - 1 \ , \quad n > 0
\end{align}
$$
*的封闭形式的解*

$$
\begin{align}
设 m & = \frac{1}{2} \alpha + \frac{1}{2} \alpha^{-1} \ , (\alpha > 1) \\
则 Y_0 & = \frac{1}{2} (\alpha + \alpha^{-1}) \\
Y_1 & = \frac{1}{2} (\alpha^2 + \alpha^{-2}) \\
Y_2 & = \frac{1}{2} (\alpha^4 + \alpha^{-4}) \\
\vdots \\
Y_n & = \frac{1}{2} (\alpha^{2^n} + \alpha^{-2^n}) \\
\Rightarrow Y_n & = \lceil \frac{\alpha^{2^n}}{2} \rceil
\end{align}
$$
