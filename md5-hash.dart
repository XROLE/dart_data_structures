import 'package:crypto/crypto.dart';
import 'dart:convert';

void main() {
  String crackedPassword = crack('86CC266E1C70ED60524B9F23C79E3A28');
  print('I am a chosen one ' + crackedPassword);
}

String crack(hash) {
  for (var i = 0; i < 100000; i++) {
    var key = i.toString().padLeft(5, '0');
    if (hash == md5.convert(utf8.encode(key)).toString()) return key;
  }
  return '';
}
