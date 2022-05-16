///
///  类型转化的扩展
///
extension ObjectExtension on Object? {
  /// 检查类型并强转或返回空
  T? asSafeType<T>() => this is T ? this as T : null;

  /// 不为空类型强转或返回新对象
  T asTypeOrNew<T>(T t) => this != null ? this as T : t;

  /// 不为空检查类型并强转或返回新对象
  T asSafeTypeOrNew<T>(T t) => this != null && this is T ? this as T : t;
}
