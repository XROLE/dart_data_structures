// A square of squares
// You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!

// However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.

// Task
// Given an integral number, determine if it's a square number:

// In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.

// The tests will always use some integral number, so don't worry about that in dynamic typed languages.

// Examples
// -1  =>  false
//  0  =>  true
//  3  =>  false
//  4  =>  true
// 25  =>  true
// 26  =>  false

// SOLUTION
void main() {
  print('I am a chosen one ${isSquare(-16)}');
}

bool isSquare(int numb) {
  if (numb == -1) {
    return false;
  } else if (numb == 0) {
    return true;
  } else {
    try {
      return List.generate(numb, (index) => index + 1)
          .any((element) => element * element == numb);
    } catch (_) {
      return false;
    }
  }
}
