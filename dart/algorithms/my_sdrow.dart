/*
  Write a function that takes in a string of one or more words, and returns the same 
  string, but with all five or more letter words reversed (Just like the name of this Kata). 
  Strings passed in will consist of only letters and spaces. Spaces will be included only 
  when more than one word is present.

  Examples: spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" spinWords
  ( "This is a test") => returns "This is a test" spinWords( "This is another test" )=> returns 
  "This is rehtona test"
 */

// SOLUTION

void main() {
  print("I am a chosen one ${spinWords('I love my daddy')}");
}

String spinWords(String str) {
  List<String> wordList = str.split(' ');
  List<String> wordList2 = [];

  for (String word in wordList) {
    if (word.length > 4) {
      String newWord = '';
      for (int i = word.length - 1; i > -1; i--) {
        newWord += word[i];
      }
      wordList2.add(newWord);
    } else {
      wordList2.add(word);
    }
  }

  return wordList2.join(' ');
}


/*
OTHER SOLUTIONS
1. =================================> 
String spinWords(String str) {
  return str.split(' ').map((e)=> e.length > 4 ? e.split('').reversed.join():e).join(' ');
}


2 ==================================>
String spinWords(String str) {
  return str
      .split(" ")
      .map((word) =>
          word.length >= 5 ? word = word.split('').reversed.join('') : word)
      .join(" ");
}

*/