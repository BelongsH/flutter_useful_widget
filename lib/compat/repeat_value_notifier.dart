import 'package:flutter/material.dart';

///
/// 可观察的对象，当相同值的时候没办法进行刷新。
///
/// 这个类用来处理，可观察对象在相同值的时候也进行刷新
///
class RepeatValueNotifier<T> extends ValueNotifier<T> {
  RepeatValueNotifier(T value) : super(value);

  @override
  set value(T newValue) {
    if (newValue != null && value != newValue) {
      super.value = newValue;
    } else {
      notifyListeners();
    }
  }
}
