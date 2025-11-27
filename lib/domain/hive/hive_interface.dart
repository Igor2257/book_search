//Интерфейс для работы с Hive
abstract class HiveInterface<T> {
  Future<bool> create(T item);
  Future<bool> update(T item);
  Future<bool> delete(String ids);
  Future<bool> clear();
}
