Strogatz's Ordinary Differential Equations Benchmark 
===

This repository contains 2-state dynamic models adapted from Steven Strogatz's book "Chaos and Nonlinear Dynamics". They represent idealized dynamical systems from many fields of study. 

Each system can exhibit chaotic and/or nonlinear behavior. For the purposes of modeling, these systems are simulated using initial conditions within stable basins of attraction. 

The systems are simulated using simulink and matlab. 

Problems
===

Name | Equations
----------- | ---------
Bacterial Respiration | $\dot{x} = 20 - x - \frac{xy}{1+0.5 x^2} \\ \dot{y} = 10 - \frac{xy}{1+0.5 x^2}$
Bar Magnets | $\dot{\theta} = 0.5 \sin (\theta - \phi) - \sin (\theta) \\ \dot{\phi} = 0.5 \sin (\phi - \theta) - \sin (\phi)$
Glider | $\dot{v} = - 0.05 v^2 - sin (\theta) \\ \dot{\theta} = v - \cos (\theta)/v$
Lotka-Volterra interspecies dynamics | $\dot{x} = 3 x - 2xy - x^2 \\ \dot{y} = 2 y - xy - y^2$
Predator - Prey | $\dot{x} = x (4 - x - \frac{y}{1+x}) \\ \dot{y} = y \left( \frac{x}{1+x} - 0.075 y \right)$
Shear flow | $\dot{\theta} = \cot (\phi) cos(\theta) \\ \dot{\phi} = (\cos ^2 (\phi) + 0.1 \sin^2 (\phi)) sin(\theta)$
van der Pol oscillator | $\dot{x} = 10 \left(y - \frac{1}{3}(x^3-y) \right) \\ \dot{y} = -\frac{1}{10}x$


Purpose
===
The data files from simulation are provided for benchmarking purposes for system identification / machine learning. The goal should be not only to produce an accurate dynamic model, but to produce a model that captures/matches the underlying processes used to generate the data. 


Cite
===

It has been used as a benchmark dataset in the following publications:
 
 - La Cava, W., Danai, K., Spector, L., (2016). "Inference of Compact Nonlinear Dynamic Models by Epigenetic Local Search." Engineering Applications of Artificial Intelligence. [doi:10.1016/j.engappai.2016.07.004](http://authors.elsevier.com/a/1TVk33OWJ8hFJk)

 - Schmidt, M.D. (2011) Machine Science: Automated Modeling of Deterministic and Stochastic Dynamical Systems. PhD Thesis.

The original problems are from:

 - Strogatz, S. (2014) Nonlinear dynamics and chaos: with applications to physics, biology, chemistry, and engineering. Westview press. [link](http://www.stevenstrogatz.com/books/nonlinear-dynamics-and-chaos-with-applications-to-physics-biology-chemistry-and-engineering) 
