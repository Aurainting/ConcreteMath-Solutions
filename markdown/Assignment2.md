@[TOC](习题二)
**有些Latex公式无法显示，这里使用图片代替**
### 2.1
*记号 $\sum\limits_{k=4}^0 q_k$ 的含义是什么？*
$$\sum\limits_{k=4}^0 q_k = q_4 + q_3 + q_2 + q_1 + q_0$$

### 2.2
*化简表达式：$x([x>0]-[x<0])$*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/cad757db792d40b90a6df80ac6db57e8.png#pic_center)


### 2.3
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/08465feb608e2d4348697d208cdd7f06.png#pic_center)

### 2.4
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/38471fcc49dbe082f035abe25cf79162.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/3861176c64b82b6eea22ad9b237c253f.png#pic_center)

### 2.5
*下面的推理有何错误*
$$
(\sum_{j=1}^n a_j)(\sum_{k=1}^n \frac{1}{a_k}) = \sum_{j=1}^n \sum_{k=1}^n \frac{a_j}{a_k} = \sum_{k=1}^n \sum_{k=1}^n \frac{a_k}{a_k} = \sum_{k=1}^n n = n^2
$$
第一个等号是正确的。但第二个等号成立，仅当每个 $a_i$ 都相等才可以。  
可以列式子看一下（不妨令 $n=3$ ）：
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/dad10820000aa81553a8ae551fcc6697.png#pic_center)

### 2.6
*作为 $j$ 和 $n$ 的函数，$\sum\nolimits_{k} [1 \le j \le k \le n]$ 的值是什么*
$$
\sum\nolimits_{k} [1 \le j \le k \le n] =
\begin{cases}
0 \ , \quad j<1 \ or \ n<j \\
n-j+1 \ , \quad 1 \le j \le n
\end{cases}
= [ 1 \le j \le n] (n-j+1)
$$

### 2.7
*设 $\nabla f(x) = f(x) - f(x-1)$ ，则 $\nabla (x^{\overline{m}})$ 是什么*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/710861b20284de2573edc9b91b546c4c.png#pic_center)
### 2.8
*当 $m$ 是给定的整数时，$0^{\underline{m}}$ 的值是多少*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/bb8e48657d45692c379002ab18299ca0.png#pic_center)


### 2.9
*对于上升阶乘幂，给出类似 $x^{\underline{m+n}} = x^{\underline{m}} (x-m)^{\underline{n}}$ 的指数法则，并用它来定义 $x^{\overline{-n}}$*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/f32118b2ef0d0eeaf5cb877e77b2dcc0.png#pic_center)

### 2.11
*分部求和的一般法则 $\sum u \Delta v = uv - \sum Ev \Delta u$ 等价于*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/ea5c37428a3e0b079897a31bd9895126.png#pic_center)

### 2.14
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/04243e71fe1bb716a19d1f5310171b6e.png#pic_center)


### 2.15
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/1ce1e1762224a09450e1585ae8853b69.png#pic_center)


### 2.16
*证明 $\frac{x^{\underline{m}}} {(x-n)^{\underline{m}}} = \frac{x^{\underline{n}}} {(x-m)^{\underline{n}}}$ ，除非其中有一个分母为零*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/bf5c393b48ef5a3c25b75d8c7b19b75d.png#pic_center)

### 2.17
*证明：对于所有的整数 $m$ ，下面的公式可以用来在上升阶乘幂与下降阶乘幂之间进行转换：*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/667c58b95e9729accdc0c33e15072aa0.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/420f87a481e15813ec3c4176eaa7cf87.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/a83af258a5ba4589bb1025871103d3c3.png#pic_center)


### 2.19
*利用求和因子来求解递归式：*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/931a4e9a6c91279e7e19acebd4c11464.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/5ec4d0b331d34bf9027e447f216f300e.png#pic_center)


### 2.20
*试用扰动法计算： $\sum_{k=0}^{n} k H_k$ ，不过改为推导出 $\sum_{k=0}^n H_k$ 的值*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/3f5e35ab1170d6233f9bfcf087da75f5.png#pic_center)

### 2.21
*假设 $n \ge 0$  ，用扰动法计算和式： $S_n = \sum_{k=0}^n (-1)^{n-k} \ , \quad T_n = \sum_{k=0}^n (-1)^{n-k} k \ , \quad U_n = \sum_{k=0}^n (-1)^{n-k} k^2$*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/128392c45a4a94fb442d20acfa46fd9d.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/f5c4def1ed436c6ef09a89141134b761.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/0585c7a65ffe1008e0235bb7c8dfd435.png#pic_center)


### 2.22
*（不用归纳法）证明拉格朗日恒等式：*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/03413987a01f3bac19ae7583312f138a.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/2fa2e33b0b9208ba4cd9b11c3f66fa9f.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/5df4d3b04b3b82827b2daaff972c2ec7.png#pic_center)


### 2.23
*用两种方法计算和式：* $\sum_{k=1}^n \frac{2k+1}{k(k+1)}$  
$a.$ *用部分分式：* $\frac{1}{k} - \frac{1}{k+1}$ *替换* $\frac{1}{k(k+1)}$     
$b.$ *分部求和法*  
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/be08e3358dad7b044ef32480e03e8018.png#pic_center)


### 2.24
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/0f9b82552178d408b3adb13f6a709f85.png#pic_center)


### 2.27
*计算 $\Delta (c^{\underline{x}})$ ，并用它来推导出 $\sum_{k=1}^n \frac{(-2)^{\underline{k}}}{k}$ 的值*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/a390e5fd6c4920b511bac44f416a33ec.png#pic_center)


### 2.29
*计算和式 $\sum_{k=1}^n \frac{(-1)^k k}{4k^2-1}$*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/1fa03f7cdcb47b86454ada0e6f44b6ea.png#pic_center)


### 2.31
*黎曼 $zeta$ 函数 $\zeta (k)$ 定义为无限和式：*
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/b89e3ee4d9b4f171f4d8d2049fc70f37.png#pic_center)
![在这里插入图片描述](https://i-blog.csdnimg.cn/blog_migrate/7e37f36134c3f4d6761e3bc05e41e696.png#pic_center)
**如有问题，欢迎大家指出，谢谢**