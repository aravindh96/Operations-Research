disp("Simplex Method in Matlab")
n=input("Please enter number of variables: ");
m=input("Enter number of equations: ");
c_tilde=input("Enter coefficients of objective function: ");
A=input("Enter coefficients of LHS of subjective equations: ");
b=input("Enter RHS of subjective equations: ");
x = Simplex_function(n,m,c_tilde,A,b);


    