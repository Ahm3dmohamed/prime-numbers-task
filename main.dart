import 'dart:math';

void printPrimesBetween(int n, int m) {
  bool isPrime(int num) {
    if (num < 2) // because we start from 2
      return false;
    for (int i = 2; i <= sqrt(num).toInt(); i++) {
      if (num % i == 0) return false;
    }
    return true;
  }

  for (int i = n; i <= m; i++) {
    if (isPrime(i)) print(i);
  }
}

void main() {
  printPrimesBetween(7, 20);
}
