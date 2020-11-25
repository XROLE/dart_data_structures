void main() {
  sumMultiple(10);
}

int sumMultiple(int n) {
  return List.generate(n, (index) => index)
      .map((e) => e % 3 == 0 || e % 5 == 0 ? e : 0)
      .reduce((value, element) => value + element);
}
