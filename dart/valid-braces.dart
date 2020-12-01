// Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.
// This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!
// All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

// EXAMPLE 
// "(){}[]"   =>  True
// "([{}])"   =>  True
// "(}"       =>  False
// "[(])"     =>  False
// "[({})](]" =>  False


// ====================================== SOLUTION 1
// bool validBraces(String str) {
//   var prev = "";
//   while (str.length != prev.length) {
//             prev = str;
//             str = str
//                 .replaceAll("()", "")
//                 .replaceAll("[]", "")
//                 .replaceAll("{}", "");                
//     }
//     return (str.length == 0);
// }

// ======================================== SOLUTION 2
// bool validBraces(String braces) {
//   while (
//       braces.contains('()') || braces.contains('[]') || braces.contains('{}')) {
//     braces = braces.replaceAll('()', "");
//     braces = braces.replaceAll('[]', "");
//     braces = braces.replaceAll('{}', "");
//   }
//   return braces.isEmpty;
// }

// ========================================= SOLUTION 3
// bool validBraces(String braces) {
//   var after;
//   RegExp reg = new RegExp(r'(\(\)|\[\]|\{\})');
  
//   while(braces != (braces = braces.replaceAll(reg, ''))) {      
//     if (braces == '') {
//       return true;
//     }
//   } 
//   return false;
// }