import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
///   基础加载布局信息
///
class BaseLoadingWidget extends StatelessWidget {
  ///
  ///  中间黑色部分的宽度
  ///
  final double width;

  ///
  ///  中间黑色部分的高度
  ///
  final double height;

  ///
  ///  颜色
  ///
  final Color color;

  ///
  ///  角度
  ///
  final BorderRadius? radius;

  const BaseLoadingWidget({
    Key? key,
    this.width = 100,
    this.height = 100,
    this.color = Colors.black54,
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: radius ?? const BorderRadius.all(Radius.circular(10)),
      ),
      child: const CupertinoActivityIndicator(radius: 14, color: Colors.white),
    );
  }
}
