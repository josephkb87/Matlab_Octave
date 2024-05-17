M =[ 1 2 3; 4 5 6; 7 8 9; 10 11 12]
M*[4 5 6]
M*[1 2 3 4]
M*[1 24;1 2 3; 1 2 3]

a = 10
b = [1,2,4]
a/b
format short
format long 
who a
Who c 
who c
whos a 
% clear c 
who c
whos c
who a 
clear a 
who a 
whos a
a = 5 
b = 5 
clear all
a = 1;
who a 
whos b 
who b 
who c 
whos c 
a = [10,20;40,50;70,80]
whos a 
a(1,2)
a(2,1)
a(1,3)
a(3,1)
b(0;0.01;0.02;0.03; ;1)
b(0; 0.01; 0.02; 0.03; ;1)
b(0; 0.01; 0.02; 0.03; ;1)
b = 
b = 0:0.01:1;
b = linspace(x,y,n)
b = linspace(x,y)
clc
 theta = linspace(0,2*pi,10)
size(a)
a'
A =
A = 1 2 3 , 4 5 6 , 7 8 9
A = [1 2 3 , 4 5 6 , 7 8 9]
eye(m,n)
This function returns an m-by-n matrix with 1 on the main diagonal.
eye(m,n)
This function returns an m-by-n matrix with 1 on the main diagonal.
eye(2,4)
eye(3)
zeros)2,4)
zeros(2,4)
ones(2,4)
Matlab_Basics
ones(2,4)
diag(2)
rand(4,5)
rand(4,2)
[4,2] = EIG(X)
[4,2] = EIG(3)
[1,2] = EIG(3)
X =[1, 2,3, 4]
INV(X)
inv(X)
[2,2] =eig(X)
Matlab_Basics
ones(2,4)
ones(2,4)
ones(2,4)
diag(2)
eye(2,4)
%eye(n) %It returns an n-by-n square identity matrix
eye(2)
%zeros(m,n) % this function returns an m-by-n matrix of zeros. I.e. all the elements of this matrix will be zero
zeros(2,4)
%ones(m,n) As the name indicates it returns an m-by-n matrix of ones. All the elements in this matrix are �1�
ones(2,4)
%diag(A) This function is used to extract the diagonal of matrix A. this plays a lot of significance in operations on matrices.
diag(2)
% rand(m,n) %It returns an m-by-n matrix of random numbers
rand(2,4)
% det % c= det(a) % This returns the determinant of the square matrix
e = det(2)
% rand(m,n)% It returns an m-by-n matrix of random numbers
rand(4,2)
P = [1:2 ;2:4; 1:6]
X = [1:2 ;2:4; 1:6; 2:4]
R = NORM(X,P)
X = [1:2 ;2:4; 1:6; 2:4]
Matlab_Basics
P = [1:2 ;2:4; 1:6]
X = [1:8 ;3:4; 5:6; 6:9]
R = NORM(X,P)
A = [1:6 ;1:2; 2:4]
r2 = RANK(A)
% RANK(A,tol) is the number of singular values of A that are larger than tol.
r3 = RANK(A,tol)
P = [1:2 ;2:4; 1:6]
X = [1:8 ;3:4; 5:6; 6:9]
R = NORM(X,P)
j1 = [1:2 ;2:4; 1:6]
j2 = [1:8 ;3:4; 5:6; 6:9]
R = NORM(j1,j2)
R = NORM(j1,j2)
R = NORM(j1,j2)
R = NORM(j1,j2)
R = NORM(j1,j2)
b = linspace(x,y)
a(2,:)
a(2,:)
eye(2,4)
eye(2,4)
eye(2,4)
% Clear Vs clc
% CLEAR removes all variables from the workspace.
% CLEAR VARIABLES does the same thing.
% CLEAR GLOBAL removes all global variables.
% CLEAR FUNCTIONS removes all compiled M- and MEX-functions
% CLEAR ALL removes all variables, globals, functions and MEX links.
a = 10
b = 6
c = 5 
clear a 
who a 
whos a 
% Matrix Operations
a = [10,20;40,50;70,80]  % This stores our matrix a 
% Please take note that the matrix is a 3 x 2 matrix
a(1,2) % This will give element of 2nd colomn of 1st row of the matrix.
% This results into a pritnout of  20
a (2,1) % We are trying to get element of 1st column of 2nd row
% This results into a printour of 40
a(3,1) % This gives us element 70
a (1,3) % this results into an error because we dont have values in the 3rd column,bcos it is a 2 column matrix

%This results into a printout of the error:error: a(_,3): out of bound 2 (dimensions are 3x2)
%Colon Operator & usage in a Matrix
b= (0;0.01;0.02;0.03; ;1)
b = 0:0.01:1;
b = linspace(x,y)
a(2,:)
%Dimension
% To determine the dimensions of a matrix or vector, use the command size.
% Transposing a matrix
% The transpose operation is denoted by an apostrophe or a single quote (�). It flips a matrix about its main diagonal and it turns a row vector into a column vector. Thus,
% Matrix generators:
% Matrix generator functions of MATLAB provide an option for generation variety of matrices. 
% These options range from Identity matrix, ones matrix to zero matrix and so on.
% We will one by one study these functions.
%eye(m,n) % This function returns an m-by-n matrix with 1 on the main diagonal.
eye(2,4)

%eye(n) %It returns an n-by-n square identity matrix
eye(2)

%zeros(m,n) % this function returns an m-by-n matrix of zeros. I.e. all the elements of this matrix will be zero
zeros(2,4)

%ones(m,n) As the name indicates it returns an m-by-n matrix of ones. All the elements in this matrix are �1�
ones(2,4)

%diag(A) This function is used to extract the diagonal of matrix A. this plays a lot of significance in operations on matrices.
diag(2)

% rand(m,n) %It returns an m-by-n matrix of random numbers
rand(2,4)

% det % c= det(a) % This returns the determinant of the square matrix
e = det(2)

% rand(m,n)% It returns an m-by-n matrix of random numbers
rand(4,2)

%eig
% Eigenvalues and eigenvectors
% [V,D] = EIG(X) produces a diagonal matrix D of eigenvalues and a full matrix V whose
% columns are the corresponding eigenvectors so that X*V = V*D
X =[1:2; 2:4; 1:6]
V = [1:2; 2:4; 1:6; 2:4]
D = [2:4; 2:4; 4:2; 2:4]
F1 = eig(X)

norm
%Matrix and vector norms
%For matrices�
%NORM(X) is the largest singular value of X, max(svd(X)).
X =[1:2; 2:4; 1:6]
Norm(x) = max(svd(X))

%NORM(X,2) is the same as NORM(X).
X =[1:2; 2:4; 1:6]
NORM(X,2)
m1 = NORM(X,2)

% NORM(X,1) is the 1-norm of X, the largest column sum,
m2 = NORM(X,1) = max(sum(abs(X))).

%NORM(X,inf) is the infinity norm of X, the largest row sum,
#NORM(X,1) = max(sum(abs(X�))).
r2 = NORM(X,1)

%NORM(X,�fro�) is the Frobenius norm, sqrt(sum(diag(X�*X))).
#NORM(X,�fro�) = sqrt(sum(diag(X�*X)))
r1 = NORM(X,�fro�)

% NORM(X,P) is available for matrix X only if P is 1, 2, inf or �fro�.
% For vectors�
%NORM(V,P) = sum(abs(V).^P)^(1/P)
p = [1:2 ;2:4; 1:6]
v =[1:6 ;1:2; 2:4]
q = NORM(V,P)

%NORM(V) = norm(V,2).
r3 = NORM(v)

%NORM(V,inf) = max(abs(V)).
r5 = NORM(v,inf)

%NORM(V,-inf) = min(abs(V)).
r6 = NORM(v,-inf)

% rank % Number of linearly independent rows or columns
% RANK(A) provides an estimate of the number of linearly independent rows or columns of a matrix A.
A = [1:6 ;1:2; 2:4]
r2 = RANK(A)

% RANK(A,tol) is the number of singular values of A that are larger than tol.
r3 = RANK(A,tol)

##cond
% Condition number with respect to inversion.
% COND(X) returns the 2-norm condition number (the ratio of the largest singular value of X to the smallest). 
X = [1:2 ;2:4; 1:6; 2:4]
R4 = COND(X)

% Large condition numbers indicate a nearly singular matrix.
% COND(X,P) returns the condition number of X in P-norm:
% NORM(X,P) * NORM(INV(X),P).
j1 = [1:2 ;2:4; 1:6]
j2 = [1:8 ;3:4; 5:6; 6:9]
R = NORM(j1,j2)