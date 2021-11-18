import 'package:flutter/material.dart';

class AppState {
  CrossFadeState? crossFade;

  AppState({this.crossFade});

  AppState.copyWith({
    required AppState prev,

    CrossFadeState? crossFade,
  }) {
    this.crossFade = crossFade ?? prev.crossFade;
  }

  AppState.initial() {
    this.crossFade = CrossFadeState.showFirst;
  }
}
