import 'package:book_search/domain/core/result.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/domain/hive/favourite_hive.dart';
import 'package:book_search/domain/mapper/object/work_mapper.dart';

abstract class FavoritesRepository {
  Future<Result<List<WorkEntity>>> getFavorites();

  Future<void> removeFavorite(String workKey);
}

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavouriteHive favouriteHive;

  FavoritesRepositoryImpl(this.favouriteHive);

  @override
  Future<Result<List<WorkEntity>>> getFavorites() async {
    try {
      final works = await favouriteHive.favourites
          .map((e) => e.toEntity().toggleFavoriteStatus(isFavorite: true))
          .toList();
      return Result.success(works);
    } catch (e) {
      return Result.failure('Не вдалося завантажити улюблені книги: $e');
    }
  }

  @override
  Future<void> removeFavorite(String workKey) async {
    await favouriteHive.delete(workKey);
  }
}
