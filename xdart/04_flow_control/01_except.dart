
void main(){


  throw FormatException('Expected at least 1 section');

  throw 'Out of llamas!';

  // try {
  //   breedMoreLlamas();
  // } on OutOfLlamasException {
  //   buyMoreLlamas();
  // }


  // try {
  //   breedMoreLlamas();
  // } on OutOfLlamasException {
  //   // A specific exception
  //   buyMoreLlamas();
  // } on Exception catch (e) {
  //   // Anything else that is an exception
  //   print('Unknown exception: $e');
  // } catch (e) {
  //   // No specified type, handles all
  //   print('Something really unknown: $e');
  // }

  // try {
  //   breedMoreLlamas();
  // } catch (e) {
  //   print('Error: $e'); // Handle the exception first.
  // } finally {
  //   cleanLlamaStalls(); // Then clean up.
  // }
}

//要部分处理异常，同时允许其传播，可以使用 rethrow 关键字
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); // Runtime error
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}