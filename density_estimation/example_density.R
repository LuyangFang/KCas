rm(list = ls())
library(gss)


source("my_new_ssden1.R")

# ==================== Settings ================================================
sample_size = 3000
dim_p = 3

r = 4
p = 2

sub_size = min(sample_size, ceiling( 100*(sample_size^{1/4}))) # subsample size

# ==================== Create Data ===============================================


dat = matrix(rnorm(sample_size * dim_p,0,1), nrow = sample_size, ncol = dim_p)

dat = as.data.frame(dat)
colnames(dat) = c("X1", "X2", "X3")

sub_dat = dat[1:sub_size,]
sub_dat = as.data.frame(sub_dat)

# ===== Method ==========================================================

formul = as.formula("~X1 + X2 + X3")

# ----- Fit via GCV on subsample -----
ssfit = ssden1(formul, data = sub_dat)

me.lamb = ssfit$lambda
me.theta = ssfit$theta


# ----- KCas estimation -----
e_lam = 10 ^ me.lamb 
lamdba.pro = log10( e_lam * (sample_size / sub_size) ^ (-r /(p*r+1)) )
theta.pro = me.theta



ssfit2 = my_ssden1(formul, my_lambda = lamdba.pro, my_theta = theta.pro, data = dat)

# compute estimated probalities
hat_probs = d.ssden1(ssfit2, dat)









