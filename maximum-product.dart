// Task
// Given an array of integers , Find the maximum product obtained from multiplying 2 adjacent numbers in the array.

// Notes
// Array/list size is at least 2.
// Array/list numbers could be a mixture of positives, negatives also zeroes .

// Input >> Output Examples

// adjacentElementsProduct([1, 2, 3]); ==> return 6
// Explanation:
// The maximum product obtained from multiplying 2 * 3 = 6, and they're adjacent numbers in the array.

// adjacentElementsProduct([9, 5, 10, 2, 24, -1, -48]); ==> return 50
// Explanation:
// Max product obtained from multiplying 5 * 10 = 50.

// SOLUTION
void main() {
  print('I am a chosen one ${adjacentElementsProduct([9, 5, 10, 2, 24, -1, -48])}');
}

int adjacentElementsProduct(List<int> inputArray) {
  // Add your code Here .. Enjoy...
  List<int> newInputArray = [];
  for (var i = 0; i < inputArray.length - 1; i++) {
    newInputArray.add(inputArray[i] * inputArray[i + 1]);
  }

  return (newInputArray..sort())[newInputArray.length - 1];
}
