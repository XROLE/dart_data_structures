// Write a function called that takes a string of parentheses, and determines if the order of the parentheses is valid.
// The function should return true if the string is valid, and false if it's invalid.

// EXAMPLE
// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true

// SOLUTION
void main() {
  print('I am a chosen one ${validParenthesis('(())')}');
}

// bool validParenthesis(String braces) {

//   while (braces.contains('()')) {
//     braces = braces.replaceAll('()', "");
//   }

//   return braces.isEmpty;
// }

bool validParenthesis(String parentheses) {
  try { new RegExp(parentheses); }
  catch (_) { return false; }
  return true;
}
