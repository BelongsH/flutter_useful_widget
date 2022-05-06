import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///
///  设置可以观察对象的操作
///
extension ValueListenableExtension<T> on ValueListenable<T> {
  ///
  ///  添加可以观察的监听
  /// [build] 回调函数，返回Widget
  ///
  ValueListenableBuilder<T> listen(Widget Function(T t, Widget? child) build) {
    return ValueListenableBuilder<T>(
      builder: (BuildContext context, T value, Widget? child) {
        return build.call(value, child);
      },
      valueListenable: this,
    );
  }
}

///
///  将对象变为可观察的对象
///
extension ValueNotifierExtension<T> on T {
  ValueNotifier<T> get notifier => ValueNotifier(this);
}
