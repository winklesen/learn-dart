// Generic
// It's kinda rules about how the code work
// ex: you cannot cast boolean to Double

// T = any
// You can use this to simplified code.
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}