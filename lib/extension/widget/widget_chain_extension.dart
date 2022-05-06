import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

///
///  单一控件扩展
///
extension WidgetChainExtension on Widget {
  ///
  ///  转化成数组链条
  ///
  List<Widget> addNeighbor(Widget widget) {
    return [this, widget];
  }

  ///
  ///  控件转化成控件数组
  ///
  List<Widget> asList() {
    return [this];
  }

  ///
  ///  插入Align控件
  ///
  Align intoAlign({
    Key? key,
    Alignment alignment = Alignment.center,
    double? widthFactor,
    double? heightFactor,
  }) {
    return Align(
      key: key,
      alignment: alignment,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  ///
  ///  插入ClipRRect控件
  ///
  ClipRRect intoClipRRect({
    Key? key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<RRect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipRRect(
      key: key,
      borderRadius: borderRadius,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  ///
  /// 插入ClipOval控件
  ///
  ClipOval intoClipOval({
    Key? key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<Rect>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipOval(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  ///
  /// 插入ClipPath控件
  ///
  ClipPath intoClipPath({
    Key? key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<Path>? clipper,
    Clip clipBehavior = Clip.antiAlias,
  }) {
    return ClipPath(
      key: key,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: this,
    );
  }

  ///
  /// 插入Offstage控件
  ///
  Offstage intoOffstage({
    Key? key,
    bool offstage = true,
  }) {
    return Offstage(
      key: key,
      offstage: offstage,
      child: this,
    );
  }

  ///
  /// 插入Padding控件
  ///
  Padding intoPadding({
    Key? key,
    required EdgeInsetsGeometry padding,
  }) {
    return Padding(
      key: key,
      padding: padding,
      child: this,
    );
  }

  ///
  /// 设置左边间距
  ///
  Padding paddingLeft(double left) {
    return intoPadding(padding: EdgeInsets.only(left: left));
  }

  ///
  /// 设置右边间距
  ///
  Padding paddingRight(double right) {
    return intoPadding(padding: EdgeInsets.only(right: right));
  }

  ///
  /// 设置上面间距
  ///
  Padding paddingTop(double top) {
    return intoPadding(padding: EdgeInsets.only(top: top));
  }

  ///
  /// 设置下面间距
  ///
  Padding paddingBottom(double bottom) {
    return intoPadding(padding: EdgeInsets.only(bottom: bottom));
  }

  ///
  /// 设置四周的间距
  ///
  Padding only({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) {
    return intoPadding(
      padding:
          EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
    );
  }

  ///
  /// 设置竖直间距
  ///
  Padding paddingVertical(double vertical) {
    return intoPadding(padding: EdgeInsets.symmetric(vertical: vertical));
  }

  ///
  /// 设置水平间距
  ///
  Padding paddingHorizontal(double horizontal) {
    return intoPadding(padding: EdgeInsets.symmetric(horizontal: horizontal));
  }

  ///
  /// 插入Positioned控件
  ///
  Positioned intoPositioned({
    Key? key,
    double? left,
    double? top,
    double? right,
    double? bottom,
    double? width,
    double? height,
  }) {
    return Positioned(
      key: key,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
      child: this,
    );
  }

  ///
  /// 插入Center控件
  ///
  Center intoCenter({
    Key? key,
    double? widthFactor,
    double? heightFactor,
  }) {
    return Center(
      key: key,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  ///
  /// 插入Expanded控件
  ///
  Expanded intoExpanded({
    Key? key,
    int flex = 1,
  }) {
    return Expanded(key: key, flex: flex, child: this);
  }

  ///
  /// 插入Flexible控件
  ///
  Flexible intoFlexible({
    Key? key,
    int flex = 1,
    FlexFit fit = FlexFit.loose,
  }) {
    return Flexible(key: key, flex: flex, fit: fit, child: this);
  }

  ///
  /// 插入SizedBox控件
  ///
  SizedBox intoSizedBox({
    Key? key,
    double? width,
    double? height,
  }) {
    return SizedBox(
      key: key,
      width: width,
      height: height,
      child: this,
    );
  }

  ///
  /// 插入LimitedBox控件
  ///
  LimitedBox intoLimitedBox({
    Key? key,
    double maxWidth = double.infinity,
    double maxHeight = double.infinity,
  }) {
    return LimitedBox(
      key: key,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
      child: this,
    );
  }

  ///
  /// 插入OverflowBox控件
  ///
  OverflowBox intoOverflowBox({
    Key? key,
    Alignment alignment = Alignment.center,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
  }) {
    return OverflowBox(
      key: key,
      alignment: alignment,
      minWidth: minWidth,
      minHeight: minHeight,
      maxWidth: maxWidth,
      maxHeight: maxHeight,
      child: this,
    );
  }

  ///
  /// 插入SizedOverflowBox控件
  ///
  SizedOverflowBox intoSizedOverflowBox({
    Key? key,
    required Size size,
    Alignment alignment = Alignment.center,
  }) {
    return SizedOverflowBox(
      key: key,
      size: size,
      alignment: alignment,
      child: this,
    );
  }

  ///
  /// 插入FittedBox控件
  ///
  FittedBox intoFittedBox({
    Key? key,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
  }) {
    return FittedBox(
      key: key,
      fit: fit,
      alignment: alignment,
      child: this,
    );
  }

  ///
  /// 插入DecoratedBox控件
  ///
  DecoratedBox intoDecoratedBox({
    Key? key,
    required Decoration decoration,
    DecorationPosition position = DecorationPosition.background,
  }) {
    return DecoratedBox(
      key: key,
      decoration: decoration,
      position: position,
      child: this,
    );
  }

  ///
  /// 插入RotatedBox控件
  ///
  RotatedBox intoRotatedBox({
    Key? key,
    required int quarterTurns,
  }) {
    return RotatedBox(
      key: key,
      quarterTurns: quarterTurns,
      child: this,
    );
  }

  ///
  /// 插入ConstrainedBox控件
  ///
  ConstrainedBox intoConstrainedBox({
    Key? key,
    required BoxConstraints constraints,
  }) {
    return ConstrainedBox(
      key: key,
      constraints: constraints,
      child: this,
    );
  }

  ///
  /// 插入UnconstrainedBox控件
  ///
  UnconstrainedBox intoUnconstrainedBox({
    Key? key,
    TextDirection? textDirection,
    Alignment alignment = Alignment.center,
    Axis? constrainedAxis,
  }) {
    return UnconstrainedBox(
      key: key,
      textDirection: textDirection,
      alignment: alignment,
      constrainedAxis: constrainedAxis,
      child: this,
    );
  }

  ///
  /// 插入AnimatedAlign控件
  ///
  AnimatedAlign intoAnimatedAlign({
    Key? key,
    Alignment alignment = Alignment.center,
    Curve curve = Curves.linear,
    required Duration duration,
    VoidCallback? onEnd,
  }) {
    return AnimatedAlign(
      key: key,
      alignment: alignment,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  ///
  /// 插入AnimatedPadding控件
  ///
  AnimatedPadding intoAnimatedPadding({
    Key? key,
    required EdgeInsetsGeometry padding,
    Curve curve = Curves.linear,
    required Duration duration,
    VoidCallback? onEnd,
  }) {
    return AnimatedPadding(
      key: key,
      padding: padding,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  ///
  /// 插入AnimatedContainer控件
  ///
  AnimatedContainer intoAnimatedContainer({
    Key? key,
    Alignment? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    Curve curve = Curves.linear,
    required Duration duration,
    VoidCallback? onEnd,
  }) {
    return AnimatedContainer(
      key: key,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      curve: curve,
      duration: duration,
      onEnd: onEnd,
      child: this,
    );
  }

  ///
  /// 插入SingleChildScrollView控件
  ///
  SingleChildScrollView intoSingleChildScrollView({
    Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry? padding,
    bool? primary,
    ScrollPhysics? physics,
    ScrollController? controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return SingleChildScrollView(
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      padding: padding,
      primary: primary,
      physics: physics,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      child: this,
    );
  }

  GestureDetector onTap(GestureTapCallback onTap, {Key? key}) {
    return intoGestureDetector(onTap: onTap, key: key);
  }

  GestureDetector onDoubleTap(GestureTapCallback onDoubleTap, {Key? key}) {
    return intoGestureDetector(onDoubleTap: onDoubleTap, key: key);
  }

  GestureDetector onLongPress(GestureLongPressCallback onLongPress,
      {Key? key}) {
    return intoGestureDetector(onLongPress: onLongPress, key: key);
  }

  ///
  /// 插入GestureDetector控件
  ///
  GestureDetector intoGestureDetector({
    Key? key,
    GestureTapDownCallback? onTapDown,
    GestureTapUpCallback? onTapUp,
    GestureTapCallback? onTap,
    GestureTapCancelCallback? onTapCancel,
    GestureTapDownCallback? onSecondaryTapDown,
    GestureTapUpCallback? onSecondaryTapUp,
    GestureTapCancelCallback? onSecondaryTapCancel,
    GestureTapCallback? onDoubleTap,
    GestureLongPressCallback? onLongPress,
    GestureLongPressStartCallback? onLongPressStart,
    GestureLongPressMoveUpdateCallback? onLongPressMoveUpdate,
    GestureLongPressUpCallback? onLongPressUp,
    GestureLongPressEndCallback? onLongPressEnd,
    GestureDragDownCallback? onVerticalDragDown,
    GestureDragStartCallback? onVerticalDragStart,
    GestureDragUpdateCallback? onVerticalDragUpdate,
    GestureDragEndCallback? onVerticalDragEnd,
    GestureDragCancelCallback? onVerticalDragCancel,
    GestureDragDownCallback? onHorizontalDragDown,
    GestureDragStartCallback? onHorizontalDragStart,
    GestureDragUpdateCallback? onHorizontalDragUpdate,
    GestureDragEndCallback? onHorizontalDragEnd,
    GestureDragCancelCallback? onHorizontalDragCancel,
    GestureForcePressStartCallback? onForcePressStart,
    GestureForcePressPeakCallback? onForcePressPeak,
    GestureForcePressUpdateCallback? onForcePressUpdate,
    GestureForcePressEndCallback? onForcePressEnd,
    GestureDragDownCallback? onPanDown,
    GestureDragStartCallback? onPanStart,
    GestureDragUpdateCallback? onPanUpdate,
    GestureDragEndCallback? onPanEnd,
    GestureDragCancelCallback? onPanCancel,
    GestureScaleStartCallback? onScaleStart,
    GestureScaleUpdateCallback? onScaleUpdate,
    GestureScaleEndCallback? onScaleEnd,
    HitTestBehavior? behavior,
    bool excludeFromSemantics = false,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return GestureDetector(
      key: key,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTap: onTap,
      onTapCancel: onTapCancel,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onLongPressStart: onLongPressStart,
      onLongPressMoveUpdate: onLongPressMoveUpdate,
      onLongPressUp: onLongPressUp,
      onLongPressEnd: onLongPressEnd,
      onVerticalDragDown: onVerticalDragDown,
      onVerticalDragStart: onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd,
      onVerticalDragCancel: onVerticalDragCancel,
      onHorizontalDragDown: onHorizontalDragDown,
      onHorizontalDragStart: onHorizontalDragStart,
      onHorizontalDragUpdate: onHorizontalDragUpdate,
      onHorizontalDragEnd: onHorizontalDragEnd,
      onHorizontalDragCancel: onHorizontalDragCancel,
      onForcePressStart: onForcePressStart,
      onForcePressPeak: onForcePressPeak,
      onForcePressUpdate: onForcePressUpdate,
      onForcePressEnd: onForcePressEnd,
      onPanDown: onPanDown,
      onPanStart: onPanStart,
      onPanUpdate: onPanUpdate,
      onPanEnd: onPanEnd,
      onPanCancel: onPanCancel,
      onScaleStart: onScaleStart,
      onScaleUpdate: onScaleUpdate,
      onScaleEnd: onScaleEnd,
      behavior: behavior,
      excludeFromSemantics: excludeFromSemantics,
      dragStartBehavior: dragStartBehavior,
      child: this,
    );
  }

  ///
  /// 插入Container控件
  ///
  Container intoContainer({
    Key? key,
    AlignmentGeometry? alignment,
    EdgeInsetsGeometry? padding,
    Color? color,
    Decoration? decoration,
    Decoration? foregroundDecoration,
    double? width,
    double? height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
  }) {
    return Container(
      key: key,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      child: this,
    );
  }
}
