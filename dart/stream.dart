void main() async {
  Stream<int> newStream = showTenInTenSeconds(5);
  List<int> streamValue = await streamFuture(newStream);

  print('I am a chosen one  ===> ${streamValue}');
}

Stream<int> showTenInTenSeconds(int numToCount) async* {
  for (int i = 1; i < numToCount; i++) {
    yield i;
  }
}

Future<List<int>> streamFuture(Stream str) async {
  List<int> streamList = [];
  await for (var st in str) {
    streamList.add(st);
  }

  return streamList;
}
