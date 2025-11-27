import 'package:book_search/common/utils/core/extensions.dart';
import 'package:book_search/data/dto/work_dto.dart';
import 'package:book_search/domain/hive/hive_initialize.dart';
import 'package:book_search/domain/hive/hive_interface.dart';

class FavouriteHive implements HiveInterface<WorkDto> {
  List<WorkDto> get favourites => List.unmodifiable(favouriteBox.values);

  WorkDto? getWorkDto(String key) {
    return favourites.firstWhereOrNull((element) => element.key == key);
  }

  @override
  Future<bool> clear() async {
    try {
      await favouriteBox.clear();
      return true;
    } catch (e, trace) {
      return false;
    }
  }
  Future<bool> isFavorite(String workKey) async {
    return favouriteBox.containsKey(workKey);
  }

  @override
  Future<bool> create(WorkDto item) async {
    try {
      await favouriteBox.put(item.key, item);
      return true;
    } catch (e, trace) {
      return false;
    }
  }

  @override
  Future<bool> delete(String id) async {
    try {
      await favouriteBox.delete(id);
      return true;
    } catch (e, trace) {
      return false;
    }
  }

  @override
  Future<bool> update(WorkDto item) async {
    try {
      await favouriteBox.put(item.key, item);
      return true;
    } catch (e, trace) {
      return false;
    }
  }
}
