void main() {
  print('I am a chosen one ${maxTriSum([2,1,8,0,6,4,8,6,2,4])}');
}

int maxTriSum(List<int> nums) {
  return (nums.toSet().toList()..sort())
      .reversed
      .take(3)
      .reduce((value, element) => value + element);
}
