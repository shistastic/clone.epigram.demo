
import 'package:flutter/cupertino.dart';

abstract class Action {}

class Convert extends Action {}

class UpdateCrossfade extends Action {
  String payload;

  UpdateCrossfade(
    this.payload,
  );
}

