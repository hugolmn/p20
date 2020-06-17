## Exercice 1

$$
\begin{align*}
X(f) &= \int_{-1}^{0}x(t)\exp(-i2\pi ft)dt + \int_{0}^{1}x(t)\exp(-i2\pi ft)dt \\
&= \int_{-1}^{0}(1+t)\exp(-i2\pi ft)dt + \int_{0}^{1}(1-t)\exp(-i2\pi ft)dt \\
\end{align*}
$$

Intégration par partie
$$
\int uv'dx = [uv] - \int u'vdx \\
\text{avec}
\begin{cases}
u = 1+t\\
u' = 1 \\
v' = \exp(-i2\pi ft)\\
v = \frac{\exp(-i2\pi ft)}{-2i\pi f}
\end{cases}
$$

$$
\begin{align*}
\int_{-1}^0(1+t)\exp(-i2\pi ft)dt &= \left[(1+t)\frac{\exp(-i2\pi ft)}{-2i\pi f} \right]_{-1}^0 - \int_{-1}^0 \frac{\exp(-i2\pi ft)}{-2i\pi f}dt \\
								  &= \frac{1}{-2i\pi f} + \frac{1}{2i\pi f}\int_{-1}^0 \exp(-2i\pi ft)dt \\
								  &= \frac{1}{-2i\pi f} + \frac{1}{2i\pi f}\left[ \frac{\exp(-i2\pi ft)}{-2i\pi f} \right]_{-1}^0 \\
								  &= \frac{1}{-2i\pi f} + \frac{1}{2i\pi f}\left( \frac{\exp(0)}{-2i\pi f} - \frac{\exp(i2\pi f)}{-2i\pi f} \right) \\
								  &= \frac{1}{-2i\pi f} + \frac{1}{-2^2i^2\pi^2 f^2}\left(1 - \exp(i2\pi f)\right) \\
								  &= \frac{i}{2\pi f} + \frac{1}{4\pi^2 f^2}- \frac{\exp(i2\pi f)}{4\pi^2 f^2}
\end{align*}
$$

Intégration par partie
$$
\int uv'dx = [uv] - \int u'vdx \\
\text{avec}
\begin{cases}
u = 1-t\\
u' = -1 \\
v' = \exp(-i2\pi ft)\\
v = \frac{\exp(-i2\pi ft)}{-2i\pi f}
\end{cases}
$$

$$
\begin{align*}
\int_0^1(1-t)\exp(-i2\pi ft)dt &= \left[(1-t)\frac{\exp(-i2\pi ft)}{-2i\pi f} \right]_0^1 - \int_0^1 -1*\frac{\exp(-i2\pi ft)}{-2i\pi f}dt \\
								  &= \frac{1}{2i\pi f} - \frac{1}{2i\pi f}\int_0^1 \exp(-2i\pi ft)dt \\
								  &= \frac{1}{-2i\pi f} - \frac{1}{2i\pi f}\left[ \frac{\exp(-i2\pi ft)}{-2i\pi f} \right]_0^1 \\
								  &= \frac{1}{2i\pi f} - \frac{1}{2i\pi f}\left(\frac{\exp(-i2\pi f)}{-2i\pi f}  - \frac{\exp(0)}{-2i\pi f} \right) \\
								  &= \frac{1}{2i\pi f} - \frac{1}{-2^2i^2\pi^2 f^2}\left(\exp(-i2\pi f) - 1 \right) \\
								  &= -\frac{i}{2\pi f} + \frac{1}{4\pi^2 f^2}- \frac{\exp(-i2\pi f)}{4\pi^2 f^2}
\end{align*}
$$
On s'appuie sur les formules suivantes :

- Formule d'Euler : $\cos(x) = \frac{\exp^{ix}+\exp{-ix}}{2}$
- Linéarisation : $\cos(2x) = 1 - 2\sin^2(x)\Rightarrow \sin^2(x) = \frac{1-\cos(2x)}{2}$
- Sinus cardinal : $sinc(x) = \frac{\sin(x)}{x}$

On a ainsi $\forall t \neq 0$ :
$$
\begin{align*}
X(f) &= \frac{i}{2\pi f} + \frac{1}{4\pi^2 f^2}- \frac{\exp(i2\pi f)}{4\pi^2 f^2} -\frac{i}{2\pi f} + \frac{1}{4\pi^2 f^2}- \frac{\exp(-i2\pi f)}{4\pi^2 f^2} \\
&= \frac{2}{4\pi^2f^2} - \frac{\exp(i2\pi f) + \exp(-i2\pi f)}{4\pi^2f^2} \\
&= \frac{2\cos(2\pi f) - 2}{-4\pi^2f^2} \\
&= \frac{\cos(2\pi f)-1}{-2\pi^2f^2}\\
&= \frac{\sin^2(\pi f)}{\pi^2f^2} \\
&= \left( \frac{\sin(\pi f)}{\pi f} \right)^2 \\
&= (sinc(\pi f))^2

\end{align*}
$$
Pour $t = 0$ :
$$
\begin{align*}
X(0) &= \int_{-\infty}^{+\infty} x(t)\exp(-i2\pi 0t)dt \\
&= \int_{-1}^1 x(t) dt \\
&= 1
\end{align*}
$$
Au final :
$$
X(f) = \begin{cases} (sinc(\pi f))^2, & t\neq 0 \\ 1, & t=0 \end{cases}
$$

###  Question 3

$$
\begin{align*}
	\forall f \geq F_e : \left| \frac{X(f)}{X(0)} \right| &\leq 10^{-2} \\
	\left|\frac{X(f)}{1}\right| &\leq 10^{-2} \\
	\left|X(f)\right| &\leq 10^{-2} \\
	\left|\frac{\sin(\pi f)}{\pi f}\right| &\leq 10^{-2} \\
	\left|\frac{\sin(\pi f)}{f}\right| &\leq \pi10^{-2} \\
\end{align*}
$$

On peut considérer la valeur maximale que peut prendre $sin(\pi f)$ qui est de 1 pour simplifier les calculs
$$
\begin{align*}
	\left|\frac{\sin(\pi f)}{f}\right| &\leq \pi10^{-2} \\
	\frac{1}{f} &\leq \pi10^{-2} \\
	f &\geq \frac{1}{\pi10^{-2}} \\
	f &\geq 31.83\text{Hz}
\end{align*}
$$

## Exercice 2

### Question 1

$$
\begin{align*}
	P(s) &= \frac{1}{T}\int_{-\frac{T}{2}}^{\frac{T}{2}}\left|s(t)^2\right|dt \\
		 &= \frac{1}{T}\int_{-\frac{T}{2}}^{\frac{T}{2}}  \left|t^2\right|dt \\
		 &= \frac{1}{T}\int_{-\frac{T}{2}}^{\frac{T}{2}} t^2 dt \\
		 &= \frac{1}{T}\left[\frac{t^3}{3}\right]_{-\frac{T}{2}}^{\frac{T}{2}} \\
		 &= \frac{1}{1}\left(\frac{0.5^3}{3} - \frac{(-0.5)^3}{3}\right) \\
		 &= 
\end{align*}
$$

### Question 4

$$
\begin{align*}
	P(s) &= \frac{1}{T}\int_{-\frac{T}{2}}^{\frac{T}{2}}\left|s(t)^2\right|dt \\
		 &= \frac{1}{T}\left[\int_{-\frac{T}{2}}^{-2q}|e(t)|^2dt + \int_{2q}^{-\frac{T}{2}}|e(t)|^2dt\right] \\
		 &= \frac{1}{T}*2\int_{2q}^{\frac{T}{2}} \left(\frac{1/2}{T/2 - 2q}(t-2q)\right)^2dt \\
		 &= \frac{1}{T} *2\int_0^{\frac{1}{2}q} \left(\frac{1/2}{(1/2)(1/5)}t\right)^2dt \\
		 &= \frac{1}{T} *2\int_0^{\frac{1}{2}q}\left(5t\right)^2dt \\
		 &= \frac{1}{T} *2\int_0^{\frac{1}{2}q}25t^2dt \\
		 &= \frac{1}{T} *2*25\left[\frac{t^3}{3}\right]_0^{\frac{1}{2}q} \\
		 &= \frac{1}{T} *50\frac{\left(\frac{1}{2}q\right)^3}{3} \\
		 &= \frac{1}{T}50\frac{\left(\frac{1}{10}\right)^3}{3} \\
		 &=50*10^{-3}/3 \\
		 &=
\end{align*}
$$

### Question 5

$$
\begin{align*}
SNR \geq 60dB &\Leftrightarrow  10\log_{10}\left(\frac{P_1}{P_0}\right) \geq 60 \\
&\Leftrightarrow \frac{P_1}{P_0} \geq 10^6 \\
&\Leftrightarrow P_0 \leq \frac{P_1}{10^6} \\
&\Leftrightarrow P_0 \leq 8.333*10^{-8} \\
&\Leftrightarrow \frac{1}{T} * 2 * n^2 * \frac{(\frac{1}{2}*\frac{1}{n})^3}{3} \leq 8.333*10^{-8} \\
&\Leftrightarrow \frac{2n^2}{8n^3}/3 \leq 8.333*10^{-8} \\
&\Leftrightarrow \frac{1}{12n} \leq 8.333*10^{-8} \\
&\Leftrightarrow n \geq  \\
\end{align*}
$$





