extension BoolExtension on bool {
  ///
  /// 条件成功的其情况执行
  ///
  bool yes(Function(bool value) delegate) {
    if (this == true) {
      delegate.call(this);
    }
    return this;
  }

  ///
  /// 条件失败的情况执行
  ///
  bool otherwise(Function(bool value) delegate) {
    if (this == false) {
      delegate.call(this);
    }
    return this;
  }
}
