import 'package:book_search/domain/core/result.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/domain/hive/favourite_hive.dart';
import 'package:book_search/domain/mapper/object/work_mapper.dart';
import 'package:book_search/micro_tasks/search/data/ds/search_ds.dart';

abstract class SearchRepository {
  Future<Result<List<WorkEntity>>> searchWorks(
      String query, {
        int page = 1,
        int limit = 20,
      });

  Future<void> toggleFavorite(WorkEntity work);
  Future<bool> isFavorite(String workKey);
}

class SearchRepositoryImpl implements SearchRepository {
  final SearchDs ds;
  final FavouriteHive favouriteHive;

  SearchRepositoryImpl(this.ds, this.favouriteHive);

  @override
  Future<Result<List<WorkEntity>>> searchWorks(
      String query, {
        int page = 1,
        int limit = 20,
      }) async {
    final result = await ds.searchWorks(query, page: page, limit: limit);
    if (result.hasError) return Result.failure(result.error!.message);

    final works = await Future.wait(result.data!.map((dto) async {
      final entity = dto.toEntity();
      final isFav = await favouriteHive.isFavorite(entity.key);
      return entity.toggleFavoriteStatus(isFavorite: isFav);
    }));

    return Result.success(works.toList());
  }

  @override
  Future<void> toggleFavorite(WorkEntity work) async {
    final isFav = await favouriteHive.isFavorite(work.key);
    if (isFav) {
      await favouriteHive.delete(work.key);
    } else {
      await favouriteHive.create(work.toDto());
    }
  }

  @override
  Future<bool> isFavorite(String workKey) async {
    return await favouriteHive.isFavorite(workKey);
  }
}
