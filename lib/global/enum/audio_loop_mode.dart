import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

enum AudioLoopMode {
  off(LoopMode.off),
  all(LoopMode.all),
  one(LoopMode.one);

  final LoopMode value;
  const AudioLoopMode(this.value);

  IconData icon() {
    switch (this) {
      case off:
        return Icons.repeat;
      case all:
        return Icons.repeat_on;
      case one:
        return Icons.repeat_one_on_outlined;
      default:
        return Icons.repeat;
    }
  }
}
