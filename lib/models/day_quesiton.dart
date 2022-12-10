import 'package:flutter/material.dart';

class DayQuestion {
  final String text;
  bool isLocked;
  final List<Option> options;
  Option? selectedOption;

  DayQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  Option({
    required this.text,
    required this.isCorrect,
  });
}
