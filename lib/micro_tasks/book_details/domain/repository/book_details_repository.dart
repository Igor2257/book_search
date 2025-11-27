import 'package:book_search/domain/core/result.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/domain/hive/favourite_hive.dart';
import 'package:book_search/domain/mapper/object/work_mapper.dart';
import 'package:book_search/micro_tasks/book_details/data/ds/book_details_ds.dart';
import 'package:book_search/micro_tasks/book_details/domain/mapper/book_mapper.dart';

abstract class BookDetailsRepository {
  Future<Result<WorkEntity>> getBookDetails(String workId);

  Future<void> toggleFavorite(WorkEntity work);

  Future<bool> isFavorite(String workKey);
}

class BookDetailsRepositoryImpl implements BookDetailsRepository {
  final BookDetailsDs ds;
  final FavouriteHive favouriteHive;

  BookDetailsRepositoryImpl(this.ds, this.favouriteHive);

  @override
  Future<Result<WorkEntity>> getBookDetails(String workId) async {
    final result = await ds.fetchWorkDetails(workId);
    if (result.hasError) return Result.failure(result.error!.message);

    final isFav = await favouriteHive.isFavorite(result.data!.key);
    final work = result.data!.toEntity().toggleFavoriteStatus(
      isFavorite: isFav,
    );

    return Result.success(work);
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
