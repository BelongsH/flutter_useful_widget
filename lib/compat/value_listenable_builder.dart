import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

typedef ValueListWidgetBuilder<List> = Widget Function(
    BuildContext context, List value, Widget? child);

///
///  多属性可观察对象监听widget
///
class ValueListListenableBuilder<T> extends StatefulWidget {
  final ValueListWidgetBuilder builder;
  final List<ValueListenable<T>> items;
  final Widget? child;

  const ValueListListenableBuilder(this.items, this.builder,
      {Key? key, this.child})
      : super(key: key);

  @override
  _ValueListListenableBuilderState createState() =>
      _ValueListListenableBuilderState();
}

class _ValueListListenableBuilderState<T>
    extends State<ValueListListenableBuilder<T>> {
  late List<ValueListenable<T>> items;

  @override
  void initState() {
    super.initState();
    items = widget.items;
    for (var element in items) {
      element.addListener(_valueChanged);
    }
  }

  @override
  void didUpdateWidget(ValueListListenableBuilder<T> oldWidget) {
    if (!const DeepCollectionEquality().equals(oldWidget.items, widget.items)) {
      for (var element in oldWidget.items) {
        element.removeListener(_valueChanged);
      }
      items = widget.items;
      for (var element in widget.items) {
        element.addListener(_valueChanged);
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  void _valueChanged() {
    setState(() {
      items = List.of(widget.items);
    });
  }

  @override
  void dispose() {
    super.dispose();
    for (var element in widget.items) {
      element.removeListener(_valueChanged);
    }
  }

  @override
  Widget build(BuildContext context) {
    final result = items.map((e) => e.value).toList();
    return widget.builder(context, result, widget.child);
  }
}
