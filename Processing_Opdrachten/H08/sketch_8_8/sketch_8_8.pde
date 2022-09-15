int A = 0;
int B = 1;
int C = 0;

println(A);
println(B);
for(int i = 0; i < 21; i++){
  C = A+B;
  println(C);
  A = B;
  B = C;
}
