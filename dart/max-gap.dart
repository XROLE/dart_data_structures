import 'dart:math' as math;
// Task
// Given an array/list [] of integers , Find The maximum difference between the successive elements in its sorted form.

// Notes
// Array/list size is at least 3 .

// Array/list's numbers Will be mixture of positives and negatives also zeros_

// Repetition of numbers in the array/list could occur.

// The Maximum Gap is computed Regardless the sign.

// Input >> Output Examples
// maxGap ({13,10,5,2,9}) ==> return (4)
// Explanation:
// The Maximum Gap after sorting the array is 4 , The difference between 9 - 5 = 4 .
// maxGap ({-3,-27,-4,-2}) ==> return (23)
// Explanation:
// The Maximum Gap after sorting the array is 23 , The difference between |-4- (-27) | = 23 .

// Note : Regardless the sign of negativity .

// maxGap ({-7,-42,-809,-14,-12}) ==> return (767)
// Explanation:
// The Maximum Gap after sorting the array is 767 , The difference between | -809- (-42) | = 767 .

// Note : Regardless the sign of negativity .

// maxGap ({-54,37,0,64,640,0,-15}) //return (576)
// Explanation:
// The Maximum Gap after sorting the array is 576 , The difference between | 64 - 640 | = 576 .

// Note : Regardless the sign of negativity .

// SOLUTION
void main() {
  print('I am a chosen one ${maxGap([-7, 2, -809, -14, -12])}');
}

int maxGap(List<int> nums) {
  List<int> sortedList = nums..sort();
  int max = 0;
  for (var i = 0; i < sortedList.length - 1; i++) {
    if (max < sortedList[i + 1] - sortedList[i]) {
      max = sortedList[i + 1] - sortedList[i];
    }
  }

  return max;
}


// import 'dart:math' as math;

// int maxGap(List<int> nums) {
//   nums.sort((a, b) => a - b);
//   return List.generate(nums.length - 1, (i) => (nums[i] - nums[i + 1]).abs()).reduce(math.max);
// }