// Background information
// The Hamming Code is used to correct errors, so-called bit flips, in data transmissions. Later in the description follows a detailed explanation of how it works.
// In this Kata we will implement the Hamming Code with bit length 3; this has some advantages and disadvantages:

// [ + ] It's simple to implement
// [ + ] Compared to other versions of hamming code, we can correct more mistakes
// [ - ] The size of the input triples

// Task 1: Encode function
// Implement the encode function, using the following steps:
// convert every letter of the text to its ASCII value;
// convert ASCII values to 8-bit binary;
// triple every bit;
// concatenate the result;

// For example:
// input: "hey"
// --> 104, 101, 121                  // ASCII values
// --> 01101000, 01100101, 01111001   // binary
// --> 000111111000111000000000 000111111000000111000111 000111111111111000000111  // tripled
// --> "000111111000111000000000000111111000000111000111000111111111111000000111"  // concatenated

void main() {
  print('I am a chosen one ' + getCodeUnit().toString());
}

String getCodeUnit() {
  String str = 'hey';
  return str.codeUnits
      .map((e) => '0${e.toRadixString(2)}')
      .map((String e) => e.split('').map((element) {
            return element * 3;
          }).join()
          )
      .join();
}
