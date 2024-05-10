void main() {
  emitNumber().listen((int value) {
    print('Stream value: $value');
  });
}

// With async* the function will return always a Stream
Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
