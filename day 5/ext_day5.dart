extension ComparableExtension<T extends Comparable<T>> on T {
  bool isGreaterOrEqual(T other) {
    return compareTo(other) >= 0;
  }
}