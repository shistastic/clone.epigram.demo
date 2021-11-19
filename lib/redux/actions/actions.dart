import 'package:flutter/cupertino.dart';

abstract class Action {}

class Convert extends Action {}

class UpdateIncome extends Action {
  String payload;

  UpdateIncome(
    this.payload,
  );
}
