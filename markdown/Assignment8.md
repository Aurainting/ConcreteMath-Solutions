@[TOC](习题八)

### 8.1
*当一个骰子是均匀的而另一个骰子是灌铅的时，在*
\[
\mathrm{Pr}_{01}(dd') = \mathrm{Pr}_0 (d) \mathrm{Pr_1 (d')} \ , \quad 其中 \ \mathrm{Pr}_0 (d) = \dfrac{1}{6}
\]
*的概率分布 $\mathrm{Pr}_{01}$ 中出现对子的概率是多少？掷出 $S=7$ 的概率是多少？*

灌铅骰子的概率为：
| 1 | 2 | 3 | 4 | 5 | 6 |
| --- | --- | --- | --- | --- | --- |
| $\dfrac{1}{4}$ | $\dfrac{1}{8}$ | $\dfrac{1}{8}$ | $\dfrac{1}{8}$ | $\dfrac{1}{8}$ | $\dfrac{1}{4}$ |

记掷出对子为事件 $A$
\[
\mathrm{Pr} (A) = \dfrac{1}{6} \left( \dfrac{1}{4} \times 2 + \dfrac{1}{8} \times 4 \right) = \dfrac{1}{6}
\]
而
\[
\mathrm{Pr} (S=7) = \dfrac{1}{6} \left( \dfrac{1}{4} \times 2 + \dfrac{1}{8} \times 4 \right) = \dfrac{1}{6}
\]

### 8.2
*一副随机洗好的牌上下两张都是 $A$ 的概率是多少？（所有 $52!$ 个排列均有概率 $1/52!$ ）*

记上下两张都是 $A$ 为事件 $B$
\[
\mathrm{Pr} (B) = \dfrac{\binom{4}{2} \times 2! \times 50!}{52!} = \dfrac{1}{221}
\]

### 8.3
*$1979$ 年在斯坦福大学学习具体数学棵的学生，被要求抛掷硬币直到连续两次得到正面，并报告所需要抛掷的次数。结果是：*
\[
3, \ 2, \ 3, \ 5, \ 10, \ 2, \ 6, \ 6, \ 9, \ 2.
\]
*$1987$ 年在普林斯顿大学学习具体数学的学生也被要求做类似的事情，得到下面的结果：*
\[
10, \ 2, \ 10, \ 7, \ 5, \ 2, \ 10, \ 6, \ 10, \ 2.
\]
*计算均值和方差，(a)以斯坦福大学的样本为基础； (b)以普林斯顿大学的样本为基础*

用 Python 计算：
```python
import numpy as np
a = [3, 2, 3, 5, 10, 2, 6, 6, 9, 2]
b = [10, 2, 10, 7, 5, 2, 10, 6, 10 ,2]
print(np.mean(a))
print(np.var(a, ddof=1))
print(np.mean(b))
print(np.var(b, ddof=1))
```

结果：  

斯坦福大学样本均值为 4.8 ， 样本方差约为 8.62  
普林斯顿大学样本方差为 6.4 ， 样本方差约为 12.49

### 8.4
*设 $H(z) = F(z) / G(z)$ 其中 $F(1) = G(1) = 1$ ，证明：如果所指出的导数在 $z=1$ 存在，那么与 $\mathrm{Mean}(H) = \mathrm{Mean}(F) + \mathrm{Mean}(G)$ 和 $\mathrm{Var}(H) = \mathrm{Var}(F) + \mathrm{Var}(G)$ 类似地有：*
\[
\mathrm{Mean}(H) = \mathrm{Mean}(F) - \mathrm{Mean}(G) \\
\mathrm{Var}(H) = \mathrm{Var}(F) - \mathrm{Var}(G)
\]

证明：
\[
H(z) = \dfrac{F(z)}{G(z)} \\
\Rightarrow H'(z) = \dfrac{F'(z) G(z) - F(z) G'(z)}{G^2(z)} \\
\begin{align}
\Rightarrow H''(z) &= \dfrac{F''(z)G(z) - F(z)G''(z)}{G^2(z)} \\
 &- \dfrac{(F'(z) G(z) - F(z) G'(z)) 2 G'(z)}{G^3(z)}
\end{align}
\]
\[
\begin{align}
\because \mathrm{Mean} (H) &= H'(1) \\
\therefore \mathrm{Mean} (H) &= \left. \dfrac{F'(z) G(z) - F(z) G'(z)}{G^2(z)} \right|_{z=1} \\
 &= \mathrm{Mean}(F) - \mathrm{Mean}(G)
\end{align}
\]
\[
\begin{align}
\because \mathrm{Var}(H) &= H''(1) + H'(1) - H'(1)^2 \\
\therefore \mathrm{Var}(H) &= F''(1) - G''(1) - 2G'(1)(F'(1) - G'(1)) \\
 & \phantom{=} + F'(1) - G'(1) - F'(1)^2 + 2 F'(1) G'(1) - G'(1)^2 \\
 &= (F''(1) + F'(1) - F'(1)^2) \\
 & \phantom{=} - (G''(1) + G'(1) - G'(1)^2) \\
 &= \mathrm{Var}(F) - \mathrm{Var}(G)
\end{align}
\]

### 8.5
*假设 $Alice$ 和 $Bill$ 利用正面出现概率为 $p$ 的一枚不均匀的硬币玩 $Penney$ 赌注游戏：*
\[
设 \ S_A \ 是 \ ALice \ 获胜的构型之和，\ S_B \ 是 \ Bill \ 获胜的构型之和 \\
用 \ N \ 记无论哪一位玩家迄今都没有获胜的所有序列之和 \\
\begin{align}
1 + N(\mathsf{H}+\mathsf{T}) &= N + S_A + S_B \\
N \ \mathsf{HHT} &= S_A \\
N \ \mathsf{HTT} &= S_A \mathsf{T} + S_B
\end{align}
\]
*，是否存在一个 $p$ 值，使得游戏变得公平？*

游戏变得公平，所以有 $S_A = S_B = \dfrac{1}{2}$
\[
\Rightarrow
\begin{cases}
1 + N = N + 1 \\
N p^2 (1-p) = \dfrac{1}{2} \\
N p (1-p)^2 = \dfrac{1}{2} (1-p) + \dfrac{1}{2}
\end{cases} \\
解出：p = \dfrac{3 - \sqrt{5}}{2} \in (0, 1)
\]

### 8.6
*当 $X$ 和 $Y$ 是独立的随机变量时，条件方差律 $\mathrm{V} X = \mathrm{V} ( \mathrm{E} ( X | Y ) ) + \mathrm{E} ( \mathrm{V} ( X | Y ))$ 会转化成什么？*

### 8.7
*证明：如果两枚灌铅的骰子具有同样的概率分布，那么出现对子的概率总是至少等于 $\dfrac{1}{6}$*

不妨记两枚灌铅骰子的概率分布表为
| 1 | 2 | 3 | 4 | 5 | 6 |
| --- | --- | --- | --- | --- | --- |
| $P_1$ | $P_2$ | $P_3$ | $P_4$ | $P_5$ | $P_6$ |

记出现对子为事件 $A$
\[
\mathrm{Pr} (A) = P_1^2 + P_2^2 + P_3^2 + P_4^2 + P_5^2 + P_6^2 \\
由第二章的切比雪夫单调不等式：\\
\boxed{\left( \sum_{k=1}^n a_k \right) \left( \sum_{k=1}^n b_k \right) \leqslant n \sum_{k=1}^n a_k b_k \ , \quad a_1 \leqslant \cdots \leqslant a_n \ 且 \ b_1 \leqslant \cdots \leqslant b_n \\
\left( \sum_{k=1}^n a_k \right) \left( \sum_{k=1}^n b_k \right) \geqslant n \sum_{k=1}^n a_k b_k \ , \quad a_1 \leqslant \cdots \leqslant a_n \ 且 \ b_1 \geqslant \cdots \geqslant b_n } \\
\Rightarrow 6 \cdot \mathrm{Pr} (A) \geqslant \sum_{k=1}^6 P_k \sum_{k=1}^6 P_k = 1 \\
\mathrm{Pr} (A) \geqslant \dfrac{1}{6}
\]
或者也可以用柯西不等式：
\[
\mathrm{Pr}(A) \cdot (1^2 + \dots + 1^2) \geqslant \left( \sum_{k=1}^n P_k \right)^2 \\
\Rightarrow \mathrm{Pr}(A) \geqslant \dfrac{1}{6}
\]

### 8.8
*设 $A$ 和 $B$ 是满足 $A \cup B = \Omega$ 的事件，证明：*
\[
\mathrm{Pr} (\omega \in \ A \cap B) = \mathrm{Pr} (\omega \in A) \mathrm{Pr} ( \omega \in B) - \mathrm{Pr}( \omega \not\in A) \mathrm{Pr} (\omega \not\in B).
\]

### 8.9
*证明或推翻：如果 $X$ 和 $Y$ 是独立的随机变量，那么当 $F$ 和 $G$ 是任何函数时，$F(X)$ 和 $G(Y)$ 也是独立的.*

### 8.10
*根据定义： $\mathrm{Pr}(X \leqslant x) \geqslant \dfrac{1}{2} \ 且 \ \mathrm{Pr} (X \geqslant x) \geqslant \dfrac{1}{2}$ ，能够成为一个随机变量 $X$ 的中位数的元素的最大个数是多少？*

### 8.11
*构造一个具有有限均值和无限方差的随机变量.*

### 8.12
*a. 如果 $P(z)$ 是随机变量 $X$ 的概率生成函数，证明：*
\[
\mathrm{Pr} (X \leqslant r) \leqslant x^{-r} P(x) \quad 0 < x \leqslant 1 \\
\mathrm{Pr} (X \geqslant r) \leqslant x^{-r} P(x) \quad x \geqslant 1
\]
*（这些重要的关系式称为尾不等式（tail inequality）.）*  

*b. 在特殊情形 $P(z)=(1+z)^{n} / 2^n$ 下，利用第一个尾不等式证明：当 $0 < \alpha < \dfrac{1}{2}$ 时有：*
\[
\sum_{k \leqslant \alpha n } \binom{n}{k} \leqslant 1 / \alpha^{\alpha n} (1 - \alpha)^{(1 - \alpha)n} .
\]

### 8.13
*如果 $X_1, \cdots , X_{2n}$ 是具有相同概率分布的独立随机变量，又如果 $\alpha$ 是任意一个实数，证明：*
\[
\mathrm{Pr} \left( \bigg| \dfrac{X_1 + \cdots + X_{2n}}{2n} - \alpha \bigg| \leqslant \bigg| \dfrac{X_1 + \cdots + X_{n}}{n} - \alpha \bigg| \right) \geqslant \dfrac{1}{2} .
\]

### 8.14
*设 $F(z)$ 和 $G(z)$ 是概率生成函数，又令：*
\[
H(z) = p F(z) + q G(z)
\]
*其中 $p + q = 1$ ，（这称为 $F$ 和 $G$ 的混合（mixture），它对应于抛掷一枚硬币，并根据硬币出现的是正面还是反面而选择概率分布 $F$ 或者 $G$ ）用 $p, q$ 以及 $F$ 和 $G$ 的均值和方差来表示 $H$ 的均值和方差.*

### 8.15
*如果 $F(z)$ 和 $G(z)$ 是概率生成函数，我们可以用“复合”来定义另外一个概率生成函数 $H(z)$：*
\[
H(z) = F(G(z))
\]
*用 $\mathrm{Mean}(F), \ \mathrm{Var}(F), \ \mathrm{Mean}(G)$ 以及 $\mathrm{Var}(G)$ 来表示 $\mathrm{Mean}(H)$ 以及 $\mathrm{Var}(H)$ .（方程 $G_P(z) = z S\left( \dfrac{m-1+z}{m}\right)$ 是其特殊情形）*

### 8.16
*当 $F_n(z)$ 是 $F_n(z) = \sum_{n \leqslant k \leqslant n}\dfrac{(n-k)¡ \ z^k}{(n-k)! \ k!} \ , \quad n \geqslant 0.$ 中所定义的足球不动点生成函数时，对超级生成函数 $\sum_{n \geqslant 0} F_n(z) w^n$ 求封闭形式.*

### 8.17
*设 $X_{n,p}$ 和 $Y_{n,p}$ 分别服从参数为 $(n, p)$ 的二项分布和负二项分布，（这些分布定义在 $\displaystyle H(z)^n = (q+pz)^n = \sum_{k \geqslant 0} \binom{n}{k} p^k q^{n-k} z^k$ 和 $\displaystyle (\dfrac{p}{1-qz})^n = \sum_k \binom{n+k-1}{k} p^n q^k z^k$ 中）证明：$\mathrm{Pr}(Y_{n,p} \leqslant m) = \mathrm{Pr}(X_{m+n, p} \geqslant n)$ ，这个结果表明二项式系数中什么样的恒等式？*

### 8.18
*如果对所有 $k \geqslant 0$ 有 $\mathrm{Pr} (X=k) = e^{- \mu} \mu^k / k!$ ，就说随机变量 $X$ 服从均值为 $\mu$ 的泊松分布。*  
*a. 这样一个随机变量的概率生成函数是什么？*  
*b. 它的均值，方差以及其他累积量等于什么？*

### 8.19
*继续上一习题，设 $X_1$ 是均值为 $\mu_1$ 的泊松随机变量，而 $X_2$ 是均值为 $\mu_2$ 的泊松随机变量，它与 $X_1$ 独立.*  
*a. $X_1 + X_2 = n$ 的概率是多少？*  
*b. $2X_1 + 3X_2$ 的均值，方差以及其他累积量等于多少？*

### 8.20
*证明 $\mathrm{E}X = \sum_{k=1}^m \tilde{A}_{(k)} [A^{(k)} = A_{(k)}]$ 和 $\mathrm{V} X = (\mathrm{E}X)^2 - \sum_{k=1}^m (2k-1) \tilde{A}_{(k)} [A^{(k)} = A_{(k)}]$ ，它们是等待正面和反面组成的一个给定的模式出现所需时间的均值和方差.*

### 8.21
*如果在*
\[
N = \mathsf{1} + \mathsf{H} + \mathsf{T} + \mathsf{H}\mathsf{H} + \mathsf{H}\mathsf{T} + \mathsf{T}\mathsf{H} + \mathsf{T}\mathsf{T} + \mathsf{H}\mathsf{H}\mathsf{H} + \cdots
\]
*中令 $\mathsf{H}$ 和 $\mathsf{T}$ 两者的值都为 $\dfrac{1}{2}$ ，那么 $N$ 的值表示什么？*

### 8.22
*证明 $\mathrm{V}X = \mathrm{V}(\mathrm{E}(X | Y)) + \mathrm{E}(\mathrm{V}(X | Y))$ ，即证明条件期望和条件方差的定律.*
