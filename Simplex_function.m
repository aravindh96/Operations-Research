function [x_tilde] = Simplex_function(n,m,c_tilde,A,b)

%Inputs to be given for the problem
m = m; % No. of equations
n = n; % No. of variables
c_tilde = transpose(c_tilde);
A = A;
b = transpose(b);

% Definitions
basis=[n+1:n+m];
I = eye(m);
A_tilde = [A I];
x_tilde = zeros(length(1),n+m);

%Defining the B and c_b
B = A_tilde(:,basis);
c_B = c_tilde(basis);

% Initializing C_star, A_star, and b_star
C_star = (transpose(c_B)*(B^-1)*A_tilde)-transpose(c_tilde);
A_star = (B^-1) * A_tilde;
b_star = (B^-1) * b;

%Loop Statement
while min(C_star)<0
    % Finding the index of Entering Variable
    
    E = find(C_star==min(C_star))
    
    % Checking if all values in column are negative
    if max(A_star(:,E))<=0
        break;
    end
    
    minimum_ratio = inf;
    % Minimum Ratio Test
    for i = 1:m
        
        if A_star(i,E) > 0 
            ratio(i) = b_star(i) / A_star(i,E);
            if ratio(i) < minimum_ratio
                minimum_ratio = ratio(i);
            end
        else
            ratio(i)=0;
        end
    end
    
    % Finding the index of the minimum ratio
    L = find(ratio == minimum_ratio);
    
    
    % Updating values
    basis(L) = E;
    B = A_tilde(:,basis);
    c_B = c_tilde(basis);
    
    % Updating C_star, A_star and b_star
    C_star = (transpose(c_B)*(B^-1)*A_tilde)-transpose(c_tilde)
    A_star = (B^-1) * A_tilde
    b_star = (B^-1) * b
end


    

% Optimal value and Solution
x_tilde(basis) = b_star
z = transpose(c_tilde) * transpose(x_tilde)



end

