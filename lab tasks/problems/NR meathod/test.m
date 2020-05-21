#test.m
pkg load symbolic
syms x;
f = sin(x);
f1 = diff(f);
f1(1)
