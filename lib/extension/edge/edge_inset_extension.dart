import 'package:flutter/material.dart';

extension EdgeInsetsExtension on int {
  ///
  ///  设置所有间距
  ///
  EdgeInsets get all => EdgeInsets.all(toDouble());

  ///
  ///  设置左边间距
  ///
  EdgeInsets left() => EdgeInsets.only(left: toDouble());

  ///
  ///
  ///  设置右边间距
  ///
  EdgeInsets right() => EdgeInsets.only(right: toDouble());

  ///
  ///
  ///  设置顶部间距
  ///
  EdgeInsets top() => EdgeInsets.only(top: toDouble());

  ///
  ///
  /// 设置底部间距
  ///
  EdgeInsets bottom() => EdgeInsets.only(bottom: toDouble());

  ///
  ///
  /// 设置上面间距
  ///
  EdgeInsets vertical() => EdgeInsets.symmetric(vertical: toDouble());

  ///
  ///
  /// 设置左右间距
  ///
  EdgeInsets horizontal() => EdgeInsets.symmetric(horizontal: toDouble());
}
