import 'dart:async';

import 'package:flutter/material.dart';

class CountdownProvider extends ChangeNotifier {
  Duration duration = const Duration(seconds: 180);
  StreamSubscription<int>? _trickSubscription;
  void startCountdown() {
    _startTimer(duration.inSeconds);

    notifyListeners();
  }

  void _startTimer(int seconds) {
    _trickSubscription = Stream<int>.periodic(
            const Duration(seconds: 1), (sec) => seconds - sec - 1)
        .take(seconds)
        .listen((timeLeftInSeconds) {
      duration = Duration(seconds: timeLeftInSeconds);
      notifyListeners();
    });
  }

  String get timeLeftString {
    final minutes =
        ((duration.inSeconds / 60) % 60).floor().toString().padLeft(2, '0');
    final seconds =
        (duration.inSeconds % 60).floor().toString().padLeft(2, '0');

    return "$minutes:$seconds";
  }

  void resetCountdown() {
    _trickSubscription?.cancel();
    duration = const Duration(seconds: 180);
    notifyListeners();
  }
}
