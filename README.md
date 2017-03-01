# Strogatz's Ordinary Differential Equations Benchmark 


This repository contains 2-state dynamic models adapted from Steven Strogatz's book "Chaos and Nonlinear Dynamics". They represent idealized dynamical systems from many fields of study. 

Each system can exhibit chaotic and/or nonlinear behavior. For the purposes of modeling, these systems are simulated using initial conditions within stable basins of attraction. 

The systems are simulated using simulink and matlab. 

## Problems


Name | Equations
----------- | ---------
Bacterial respiration | ![bacres](https://latex.codecogs.com/gif.download?%5Cdot%7Bx%7D%20%3D%2020%20-%20x%20-%20%5Cfrac%7Bxy%7D%7B1+0.5%20x%5E2%7D%20%5C%5C%20%5Cdot%7By%7D%20%3D%2010%20-%20%5Cfrac%7Bxy%7D%7B1+0.5%20x%5E2%7D)
Bar Magnets | ![barmag](https://latex.codecogs.com/gif.download?%5Cdot%7B%5Ctheta%7D%20%3D%200.5%20%5Csin%20%28%5Ctheta%20-%20%5Cphi%29%20-%20%5Csin%20%28%5Ctheta%29%20%5C%5C%20%5Cdot%7B%5Cphi%7D%20%3D%200.5%20%5Csin%20%28%5Cphi%20-%20%5Ctheta%29%20-%20%5Csin%20%28%5Cphi%29)
Glider | ![glider]( https://latex.codecogs.com/gif.download?%5Cdot%7Bv%7D%20%3D%20-%200.05%20v%5E2%20-%20sin%20%28%5Ctheta%29%20%5C%5C%20%5Cdot%7B%5Ctheta%7D%20%3D%20v%20-%20%5Ccos%20%28%5Ctheta%29/v)
Lotka-Volterra interspecies dynamics | ![lv](https://latex.codecogs.com/gif.latex?\dot{x}&space;=&space;10&space;\left(y&space;-&space;\frac{1}{3}(x^3-y)&space;\right)&space;\\&space;\dot{y}&space;=&space;-\frac{1}{10}x)
Predator - Prey | ![pp](https://latex.codecogs.com/gif.download?%5Cdot%7Bx%7D%20%3D%20x%20%284%20-%20x%20-%20%5Cfrac%7By%7D%7B1+x%7D%29%20%5C%5C%20%5Cdot%7By%7D%20%3D%20y%20%5Cleft%28%20%5Cfrac%7Bx%7D%7B1+x%7D%20-%200.075%20y%20%5Cright%29)
Shear flow | ![sf](https://latex.codecogs.com/gif.download?%5Cdot%7B%5Ctheta%7D%20%3D%20%5Ccot%20%28%5Cphi%29%20cos%28%5Ctheta%29%20%5C%5C%20%5Cdot%7B%5Cphi%7D%20%3D%20%28%5Ccos%20%5E2%20%28%5Cphi%29%20+%200.1%20%5Csin%5E2%20%28%5Cphi%29%29%20sin%28%5Ctheta%29)
van der Pol oscillator | ![vdp](https://latex.codecogs.com/gif.download?%5Cdot%7Bx%7D%20%3D%2010%20%5Cleft%28y%20-%20%5Cfrac%7B1%7D%7B3%7D%28x%5E3-y%29%20%5Cright%29%20%5C%5C%20%5Cdot%7By%7D%20%3D%20-%5Cfrac%7B1%7D%7B10%7Dx)


## Purpose

The data files from simulation are provided for benchmarking purposes for system identification / machine learning. The goal should be not only to produce an accurate dynamic model, but to produce a model that captures/matches the underlying processes used to generate the data. 


## Cite


It has been used as a benchmark dataset in the following publications:
 
 - La Cava, W., Danai, K., Spector, L., (2016). "Inference of Compact Nonlinear Dynamic Models by Epigenetic Local Search." Engineering Applications of Artificial Intelligence. [doi:10.1016/j.engappai.2016.07.004](http://authors.elsevier.com/a/1TVk33OWJ8hFJk)

 - Schmidt, M.D. (2011) Machine Science: Automated Modeling of Deterministic and Stochastic Dynamical Systems. PhD Thesis.

The original problems are from:

 - Strogatz, S. (2014) Nonlinear dynamics and chaos: with applications to physics, biology, chemistry, and engineering. Westview press. [link](http://www.stevenstrogatz.com/books/nonlinear-dynamics-and-chaos-with-applications-to-physics-biology-chemistry-and-engineering) 
