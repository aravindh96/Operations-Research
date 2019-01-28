%First Solution
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
[x,fval] = linprog(f,A,b)

%  x1<=1 
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [0,0];
ub = [1,inf];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)

% x1>=2
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [2,0];
ub = [inf,inf];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)

% x2<=2
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [2,0];
ub = [inf,2];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)

% x2>=3
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [2,3];
ub = [inf,inf];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)

% x1=2
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [2,0];
ub = [2,2];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)

% x1>=3
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [3,0];
ub = [inf,2];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)


% x2<=1
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [3,0];
ub = [inf,1];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)

% x2=2
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [3,2];
ub = [inf,2];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)

% x1=3
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [3,0];
ub = [3,1];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)

% x1>=4
A = [10 7
    1 1];
b = [40 5];
f = [-17 -12];
lb = [4,0];
ub = [inf,1];
Aeq = [];
beq = [];
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub)