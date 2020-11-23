// Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid.
// The function should return true if the string is valid, and false if it's invalid.

// EXAMPLE
// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true

// SOLUTION
void main() {
  print('I am a chosen one ${validParenthesis('(()(()()))')}');
}

bool validParenthesis(String braces) {
  RegExp regExp = new RegExp('()');

  while (braces.contains('()')) {
    braces = braces.replaceAll('()', "");
  }

  return braces.isEmpty;
}
