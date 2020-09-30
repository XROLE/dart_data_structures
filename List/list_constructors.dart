/*
List.of(Iterable<E> elements, {bool growable: true})
Creates a list from elements. [...]
factory
List.unmodifiable(Iterable elements)
Creates an unmodifiable list containing all elements. [...]
factory
*/

void main() {
  // testList.length = 7;
  print('I am a chosen one $generateList');
  print('I am a chosen one ${generateList.length}');
}

//1 ==============>  CREATE A LIST WITH A GIVEN LENGTH
List myList = List(4); //Fixed length of 4
List myList2 = []; // zero length
List myList3 = []..length = 29; // entendable list lenght

// 2 =======================> CREATE A NEW GROWABLE EMPTY LIST
List<int> emptyList = List<int>.empty(growable: false);

// 3 ========================>  CREATE LIST WITH ITEMS FILLED
List<String> filledList = List<String>.filled(4, 'I am a chosen one');
List<String> filledList2 =
    List<String>.filled(4, 'I am a chosen one', growable: true);

// 3 ================>  CREATE A LIST FROM ITEREABLE
List<int> fromList = List<int>.from([2, 4, 5]);

// 4 =======> GENERATE A LIST WITH LENGHT POSITION
List<int> generateList = List<int>.generate(4, (el) => el * el);

// 5 ============>  CREATE A LIST OF AN ITERABLE
List<int> ofList = List<int>.of([2, 4, 5]);  

// The important difference between the from and of methods are that the latter have type annotations and the former do not. Since Dart generics are reified and Dart 2 is strongly typed, this is key to both ensuring the List/Map is correctly constructed:
// Refer to this link for more difference https://stackoverflow.com/questions/50320220/in-dart-whats-the-difference-between-list-from-and-of-and-between-map-from-a


// 6 ================> CREATE AN UNMODIFIABLE LIST FROM ITEREABLE
List<int> unmodifiableList = List.unmodifiable([2, 3, 5]);