// // TASK
// In this kata, your task is to create a function that returns a string into a mexican wave.
// You will pass a string and must return that string in an array where uppercase is person standing up

// 1. The input string will always be lower case but maybe empty
// 2. If the character in the string is whitespace, then passover it as if it was empty seat.

// EXAMPLE
// Wave('hello') => []String {"Hello", "hEllo", "heLlo", "helLo", "hellO"};

void main() {
  print("I am a chosen one waveList =====> ${mexicanWave('hello')}");
}

List<String> mexicanWave(String wave) {
  List<String> waveList = [];

  for (int i = 0; i < wave.length; i++) {
    waveList.add(
        wave.replaceRange(i, i + 1, wave[i].toUpperCase()));
  }

  return waveList;
}


