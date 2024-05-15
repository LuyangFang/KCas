# MultiCOP: An Integrative Analysis of Microbiome-Metabolome Associations

**This repository contains code for the paper "Knowledge Cascade: Reverse Knowledge Distillation on Nonparametric Multivariate Functional Estimation"**


### Introduction

Motivated by the challenges in developing teacher models, we propose the knowledge cascade (KCas), a reversed version of knowledge distillation that utilizes the knowledge learned by the student model to help train the teacher model. Although this is challenging since the teacher model often contains more information, we show that KCas is possible by taking advantage of statistical theories. We demonstrate KCas on the nonparametric multivariate functional estimation in reproducing kernel Hilbert space.
One crucial problem is the daunting computational cost of selecting smoothing parameters, whose number increases exponentially with the number of predictors. KCas transfers the knowledge of smoothing parameters learned from the student model to the teacher model based on empirical and asymptotic results, significantly reducing the computational burden in high-dimensional and large datasets.

Here we provide the code to implement the KCas algorithm for both the **density estimation** problem and the **nonparametric regression** problem.

### Tutorial

MultiCOP requires two data tables in matrix form as input, denoted as **X** and **Y**, each with dimensions of n_sample by n_feature. The script [utils.R](https://github.com/Luyang8991/MultiCOP/blob/main/code/utils.R) contains all the utility functions that are essential for the operations carried out in the project. The script [main.R](https://github.com/Luyang8991/MultiCOP/blob/main/code/main.R) hosts the main function of the project. An example for implementing MultiCOP is available in [example.R](https://github.com/Luyang8991/MultiCOP/blob/main/code/example.R). This example shows how to implement the second scenario in the simulation section.



### Data used in the paper



### Reference
  - Fang, Luyang, Lu, Haoran, Yongkai Chen, Wenxuan Zhong, Ping Ma. "Knowledge Cascade: Reverse Knowledge Distillation on Nonparametric Multivariate Functional Estimation".


### License

Copyright © 2024 [Luyang](https://github.com/Luyang8991). <br />
This project is [MIT](https://github.com/Luyang8991/KCas/blob/main/LICENSE) licensed.

