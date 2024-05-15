rm(list=ls())

library(gss)
library(LaplacesDemon)

source("my_new_gssanova2.R") # remember to use my_new_gssanova
source("family.R")


# ==================== Settings ================================================
sample_size = 3000
dim_p = 3

rr=4
pp=2
sub_size = ceiling(100*(sample_size^{1/4})) #subsample size

# ==================== Create Data =============================================
dat = matrix(rnorm(sample_size * dim_p,0,1), nrow = sample_size, ncol = dim_p)
dat = as.data.frame(dat)
colnames(dat) = c("X1", "X2", "X3")

probs = invlogit(dat$X1 + 0.5 * dat$X2 + 0.2 * dat$X2 * dat$X3)

dat$Y = rbinom(sample_size, 1,probs)

sub_dat = dat[1:sub_size,]

# ==================== Main ====================================================

formul = as.formula("Y ~ (X1 + X2 + X3)^3")


# ----- Fit via GCV on subsample -----

fit.lgt.sub = gssanova( formul, data=sub_dat, 
                        family="binomial")


lam = fit.lgt.sub$nlambda
the = fit.lgt.sub$theta
# ----- KCas estimation -----
sub.gcv.lamb = 10^lam/sub_size 
pro.gcv.lamb = sub.gcv.lamb*((sample_size/sub_size)^(-rr/(pp*rr+1)))
LAM <- log10(sample_size*pro.gcv.lamb)
TH <- the


# ----- Fit on full sample -----

ss_model = my_gssanova( formul, data=dat, 
                        alpha=1, 
                        family='binomial',
                        my_lam = LAM, my_the = TH)

est.my = predict(ss_model, dat, se=TRUE)
est_p.my = 1-1/(1+exp(est.my$fit))

# MSE
mean((probs-est_p.my)^2)
