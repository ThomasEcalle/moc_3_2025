void main() async {
  print('1');

  try {
    final value = await _getStringFromNetwork();
    print('Got $value from netwok');
  } catch(error) {
    print('Erreur survenue: $error');
  }


  // _getStringFromNetwork().then((value) {
  //   print('Got $value from netwok');
  // }).catchError((error) {
  //   print('Erreur survenue: $error');
  // });

  print('3');
}

Future<String> _getStringFromNetwork() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'toto';

  // return Future.delayed(const Duration(seconds: 2), () {
  //   throw Exception('Oups, erreur');
  //   return 'toto';
  // });
}









