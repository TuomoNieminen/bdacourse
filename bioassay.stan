data {
  int<lower=0> N; // total rats
  int<lower=0> n[N]; // rats in group 
  int<lower=0> y[N]; // dead rats
  real x[N]; // dosage
  vector[2] mu;
  cov_matrix[2] sigma; 
}
parameters {
real alpha;
real beta;
vector[2] theta;

}

model {

theta ~ multi_normal(mu, sigma); // prior
y ~ binomial_logit(N, theta); // likelihood
}


