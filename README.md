# Knowledge Cascade: Reverse Knowledge Distillation on Nonparametric Multivariate Functional Estimation

**This repository contains code for the paper "Knowledge Cascade: Reverse Knowledge Distillation on Nonparametric Multivariate Functional Estimation"**


### Introduction

Motivated by the challenges in developing teacher models, we propose the knowledge cascade (KCas), a reversed version of knowledge distillation that utilizes the knowledge learned by the student model to help train the teacher model. Although this is challenging since the teacher model often contains more information, we show that KCas is possible by taking advantage of statistical theories. We demonstrate KCas on the nonparametric multivariate functional estimation in reproducing kernel Hilbert space.
One crucial problem is the daunting computational cost of selecting smoothing parameters, whose number increases exponentially with the number of predictors. KCas transfers the knowledge of smoothing parameters learned from the student model to the teacher model based on empirical and asymptotic results, significantly reducing the computational burden in high-dimensional and large datasets.

Here we provide the code to implement the KCas algorithm for both the **density estimation** problem and the **nonparametric regression** problem.

### Tutorial

**Density Estimation:** estimate probability densities using KCas. KCas requires two inputs: (1) formula, which provides a symbolic description of the model to be fitted; and (2) data, a data frame where rows  each row represents an individual observation and each column represents a variable.
The script [my_new_ssden1.R](https://github.com/LuyangFang/KCas/blob/main/density_estimation/my_new_ssden1.R) contains all the essential utility functions for the project's operations. An example of implementing KCas for density estimation is available in [example_density.R](https://github.com/LuyangFang/KCas/blob/main/density_estimation/example_density.R). 

**Nonparametric Regression:** non-Gaussian regression using KCas. KCas requires three inputs: (1) formula, which provides a symbolic description of the model to be fitted; (2) data, a data frame where rows  each row represents an individual observation and each column represents a variable; and (3) family, which describe the error distribution. The scripts [my_new_gssanova2.R](https://github.com/LuyangFang/KCas/blob/main/regression/my_new_gssanova2.R) and [family.R](https://github.com/LuyangFang/KCas/blob/main/regression/family.R) contain all the essential utility functions for the project's operations. An example of implementing KCas for nonparametric regression is available in [example_logistic.R](https://github.com/LuyangFang/KCas/blob/main/regression/example_logistic.R). 




### Reference
  - Fang, L., Lu, H., Chen, Y., Zhong, W., Ma. P. "Knowledge Cascade: Reverse Knowledge Distillation on Nonparametric Multivariate Functional Estimation".


### License

Copyright © 2024 [Luyang](https://github.com/Luyang8991). <br />
This project is [MIT](https://github.com/Luyang8991/KCas/blob/main/LICENSE) licensed.

