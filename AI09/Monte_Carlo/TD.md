# TD

### Exercice 1

Soit une variable aléatoire $X \to \mathcal{B}(p)$ à valeur dans $E = \{0,1\}$. $\mathbb{P}(X=1)=p$ et $\mathbb{P}(X=0)=1-p$. Ecrire un algorithme suivant $X$.

Algorithme : 

1.  $u \sim \text{unif}(0,1)$
2. Si $u <= p \Rightarrow x = 1$, sinon $x = 0$

Preuve : 
$$
\mathbb{P}(\tilde{X} = 1) = p \Leftrightarrow \mathbb{P}(\tilde{X}=1) = \mathbb{P}(u\leq p) = \mathcal{F}_u = p
$$

### Exercice 2

Soit $X \to \text{unif}(0,1)$, $X : \Omega \to E\{x_1, \dots, x_n\}$

$\mathbb{P}_i = \mathbb{P}(X=x_i) = \frac{1}{n}$, $\forall i = 1, \dots, n$

Première méthode : 
$$
X(\omega) = \sum_{j=1}^n x_j \mathbb{1}_{]P_0, \dots, P_{j-1}; P_0, \dots, P_j]} (u(\omega))
$$
Algorithme : 

1. $u \sim \text{unif}(0,1)$, $u : \Omega \to \{0,1\}$
2. Si $k = \lfloor nu \rfloor + 1$ alors $X(\omega) = x_j$

Preuve :

On veut montrer que $\forall k \in \{1, \dots, n \}$, on a : $\mathbb{P}(X=x_j) = p_k = \frac{1}{n}$
$$
\begin{align*}
	\mathbb{P}(X=x_k) &= \mathbb{P}(k = \lfloor nu \rfloor + 1) \\
					  &= \mathbb{P(\lfloor nu \rfloor = k-1)} \\
					  &= \mathbb{P}(k-1 \leq nu < k) \\
					  &= F_u((\frac{k}{n})^-) - F_u((\frac{k-1}{n})^+) \\
					  &= F_u(\frac{k}{n}) - F_u(\frac{k-1}{n}) \\
					  &= \frac{k}{n} - \frac{k-1}{n} \\
					  &= \frac{1}{n}
\end{align*}
$$