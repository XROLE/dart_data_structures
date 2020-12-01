// Write a function that when given a number >= 0, returns an Array of ascending length subarrays.
// pyramid(0) => [ ]
// pyramid(1) => [ [1] ]
// pyramid(2) => [ [1], [1, 1] ]
// pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
// Note: the subarrays should be filled with 1s

// LINK
// https://www.codewars.com/kata/515f51d438015969f7000013/train/dart

// SOLUTION 

void main(){
  print('i am a chosen one' + pyramid(-1).toString());
}

List<List<int>> pyramid(int val){
  return List.generate(val, (index) => List.filled(index + 1, 1));
}
