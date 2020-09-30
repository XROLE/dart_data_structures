
// REPLACE AN OBJECT IN A LIST POSITION X WITH ANOTHER OBJECT
List<int> myList = [4, 2, 9, 12, 0, 5];
List myList2 = [
  {'id': 1, 'name': 'Chioma'},
  {'id': 2, 'name': 'James'},
  {'id': 3, 'name': 'Chijioke'},
];

List man = [{'id': 2, 'name': 'Chinwe Okwu'}];
void main() {
  int elementIndex = getElementIndex(2, myList2);
  print('I am a chosen one ==>  Element index $elementIndex');

  myList2.replaceRange(elementIndex, elementIndex + 1, man);

  print('I am a chosen one $myList2');
}

int getElementIndex(int id, elementList) {
  int elementIndex;

  for (var i = 0; i < elementList.length; i++) {
    if (id == elementList[i]['id']) {
      return elementIndex = i;
    } else {
      elementIndex = -1;
    }
  }

  return elementIndex;
}
