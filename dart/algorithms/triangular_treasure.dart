//Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.
//          1st (1)   2nd (3)    3rd (6)
//           *          **        ***
//                      *         **
//                                *
// You need to return the nth triangular number. You should return 0 for out of range values:
//   triangular(0)==0,
//   triangular(2)==3,
//   triangular(3)==6,
//   triangular(-10)==0

// SOLUTION

void main() {
  print('I am a chosen one ${triangular(-10)}');
}

triangular(n) {
  int nthTriangular = 0;
  if (n < 0) {
    return nthTriangular;
  } else {
    for (int i = 0; i < n + 1; i++) {
      nthTriangular += i;
    }
  }
  return nthTriangular;
}

// OTHER SOLUTIONS
// 1. triangular(n) => n < 0 ? 0 : (n+1)/2 * n;
/* 2.
triangular(n) {
  var sum = 0;
  while (n > 0) {
    sum += n--;
  }
  
  return sum;
}
*/

/*
  triangular(n) {
  if(n < 0) return 0;
  return (n + 1)*n/2;
}
*/

double sew = 78.45;

