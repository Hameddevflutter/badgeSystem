import 'package:flutter/material.dart';

abstract class Failure extends ChangeNotifier {
}
//General failures
class ServerFailure extends Failure {

  ServerFailure(this.message);
  final String message;
}

class NetworkFailure extends Failure {}
class UnAutoriseFailure extends Failure {}
