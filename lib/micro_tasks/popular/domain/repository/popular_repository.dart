import 'package:book_search/domain/core/result.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/domain/hive/favourite_hive.dart';
import 'package:book_search/domain/mapper/object/work_mapper.dart';
import 'package:book_search/micro_tasks/popular/data/ds/popular_ds.dart';

abstract class PopularRepository {
  Future<Result<List<WorkEntity>>> getPopular({int limit = 20});
  Future<void> toggleFavorite(WorkEntity work);
  Future<bool> isFavorite(String workKey);
}

class PopularRepositoryImpl implements PopularRepository {
  final PopularDs ds;
  final FavouriteHive favouriteHive;

  PopularRepositoryImpl(this.ds, this.favouriteHive);

  @override
  Future<Result<List<WorkEntity>>> getPopular({int limit = 20}) async {
    final result = await ds.fetchPopular(limit: limit);
    if (result.hasError) return Result.failure(result.error!.message);

    final works = await Future.wait(result.data!.works.map((dto) async {
      final entity = dto.toEntity();
      final isFav = await favouriteHive.isFavorite(entity.key);
      return entity.toggleFavoriteStatus(isFavorite: isFav);
    }));
    return Result.success(works);
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
