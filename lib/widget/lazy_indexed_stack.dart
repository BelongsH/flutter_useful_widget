import 'package:flutter/material.dart';

class LazyIndexedStack extends StatefulWidget {
  /// 当前的位置信息
  final int index;

  /// 子类信息
  final List<Widget> children;

  const LazyIndexedStack({
    Key? key,
    this.index = 0,
    this.children = const <Widget>[],
  }) : super(key: key);

  @override
  State<LazyIndexedStack> createState() => _LazyIndexedStackState();
}

class _LazyIndexedStackState extends State<LazyIndexedStack> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      children: widget.children,
      index: widget.index,
    );
  }
}
