*Note*: these datasets are now available as part of the [Penn Machine Learning Benchmark (PMLB)](https://github.com/EpistasisLab/pmlb).

# Textbook Ordinary Differential Equations Benchmark 


This repository contains 2-state dynamic models adapted from Steven Strogatz's book "Chaos and Nonlinear Dynamics". They represent idealized dynamical systems from many fields of study. 

Each system can exhibit chaotic and/or nonlinear behavior. For the purposes of modeling, these systems are simulated using initial conditions within stable basins of attraction. 

The systems are simulated using simulink and matlab. 

## Purpose

The data files from simulation are provided for benchmarking purposes for system identification / machine learning. The goal should be not only to produce an accurate dynamic model, but to produce a model that captures/matches the underlying processes used to generate the data. 


## Cite


It has been used as a benchmark dataset in the following publications:

 - La Cava, W., Orzechowski, P., Burlacu, B., de Franca, F., Virgolin, M., Jin, Y., Kommenda, M., & Moore, J. (2021). Contemporary Symbolic Regression Methods and their Relative Performance. Proceedings of the Neural Information Processing Systems Track on Datasets and Benchmarks, 1. [neurips.cc](https://datasets-benchmarks-proceedings.neurips.cc/paper/2021/hash/c0c7c76d30bd3dcaefc96f40275bdc0a-Abstract-round1.html)

 
 - La Cava, W., Danai, K., Spector, L., (2016). "Inference of Compact Nonlinear Dynamic Models by Epigenetic Local Search." Engineering Applications of Artificial Intelligence. [doi:10.1016/j.engappai.2016.07.004](http://www.sciencedirect.com/science/article/pii/S0952197616301294)

 - Schmidt, M.D. (2011) Machine Science: Automated Modeling of Deterministic and Stochastic Dynamical Systems. PhD Thesis.

The original problems are from:

 - Strogatz, S. (2014) Nonlinear dynamics and chaos: with applications to physics, biology, chemistry, and engineering. Westview press. [link](http://www.stevenstrogatz.com/books/nonlinear-dynamics-and-chaos-with-applications-to-physics-biology-chemistry-and-engineering) 
