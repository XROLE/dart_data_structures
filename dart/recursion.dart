// Recursion is the process where a funtion calls itself

// EXAMPLE
// solving factorial using recursion

void main() {
  print('I am a chosen one ${factorial(5)}');
}

int factorial(n) {
  if (n > 1) {
    return n * factorial(n - 1);
  } else {
    return 1;
  }
}
