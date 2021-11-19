import 'package:flutter/material.dart';

class AppState {
  String? cash;

  AppState({this.cash});

  AppState.copyWith({
    required AppState prev,
    String? cash,
  }) {
    this.cash = cash ?? prev.cash;
  }

  AppState.initial() {
    this.cash = '0,00€';
  }
}
