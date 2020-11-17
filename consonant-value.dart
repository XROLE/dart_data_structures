// Given a lowercase string that has alphabetic characters only and no spaces, return the highest value of consonant substrings.
// Consonants are any letters of the alphabet except "aeiou".

// We shall assign the following values: a = 1, b = 2, c = 3, .... z = 26.

// For example, for the word "zodiacs", let's cross out the vowels. We get: "z o d ia cs"

// SOLUTION

void main() {
  print(solve('imchosenone'));
}

 solve(String txt) {
  return 
    txt
    .split(new RegExp(r"[aeiou]+"))
    .where((str) => str.trim().length > 0)
    .map((e) => e.codeUnits
    .map((i) => i - 96)
    .reduce((value, element) => value + element))
    .toList()
    ..sort((l, r) => r -l);
}
