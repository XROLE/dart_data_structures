// Count the number of Duplicates
// Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string.
// The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

// Example
// "abcde" -> 0 # no characters repeats more than once
// "aabbcde" -> 2 # 'a' and 'b'
// "aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
// "indivisibility" -> 1 # 'i' occurs six times
// "Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
// "aA11" -> 2 # 'a' and '1'
// "ABBA" -> 2 # 'A' and 'B' each occur twice

void main() {
  print('I am a chosen one ' + duplicateNumber('xroleBaba').toString());
}

int duplicateNumber(String text) {
  var counts = <String, int>{};
  text.split('').map((e) => e.toLowerCase()).forEach((element) {
    counts.containsKey(element) ? counts[element]++ : counts[element] = 1;
  });
  return counts.values.where((element) => element > 1).length;
}

// int duplicateCount(String text) {
//   var counts = <String, int>{};
//   text
//       .split('')
//       .map((e) => e.toLowerCase())
//       .forEach((e) => counts.containsKey(e) ? counts[e]++ : counts[e] = 1);
//   return counts.values.where((element) => element > 1).length;
// }
