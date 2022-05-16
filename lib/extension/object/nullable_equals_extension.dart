///
///  对象比较的扩展
///
extension NullableEquals<T> on T? {
  bool checkEquals(T value) {
    if (this == null) false;
    return this == value;
  }
}
