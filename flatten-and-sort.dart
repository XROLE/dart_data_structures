// Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.

// Example:
// Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].

void main() {
  print('I am a chosen one ' +
      flattenAndSort([
        [1, 3, 5],
        [100],
        [2, 4, 6]
      ]).toString());
}
List<int> flattenAndSort(List<List<int>> nums) => nums.expand((p) => p).toList()..sort();

// List<int> flattenAndSort(List<List<int>> nums) {
//   List<int> unSorted = [];

//   nums.forEach((element) {
//     for (var i = 0; i < element.length; i++) {
//       unSorted.add(element[i]);
//     }
//   });

//   return unSorted.toList()..sort();
// }
