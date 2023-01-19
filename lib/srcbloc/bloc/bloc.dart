import 'dart:async';
import 'package:devmovil/srcbloc/bloc/validator.dart';

class Bloc with Validator {
  final emailController = StreamController<String>();
  final passwordController = StreamController<String>();

  Stream<String> get email => emailController.stream.transform(validaEmail);
  Stream<String> get password =>
      passwordController.stream.transform(validaPassword);

  Function(String) get changeEmail => emailController.sink.add;
  Function(String) get changePassword => passwordController.sink.add;

  dispose() {
    emailController.close();
    passwordController.close();
  }
}

final bloc = Bloc();
