import 'package:bloc/bloc.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/micro_tasks/favorites/domain/repository/favorites_repository.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final FavoritesRepository repository;
  final int limit = 20; // количество элементов на страницу

  FavoritesBloc(this.repository) : super(const FavoritesState.initial()) {
    on<_LoadFavorites>((event, emit) async {
      print("object");
      emit(const FavoritesState.loading());

      final result = await repository.getFavorites();
      if (result.hasError) {
        emit(FavoritesState.error(result.error!.message));
        return;
      }

      final allWorks = result.data!;
      final totalPages = (allWorks.length / limit).ceil();
      final page = event.page ?? 1;
      final paginatedWorks = allWorks.skip((page - 1) * limit).take(limit).toList();

      emit(FavoritesState.loaded(
        works: paginatedWorks,
        currentPage: page,
        totalPages: totalPages,
      ));
    });

    on<_RemoveFavorite>((event, emit) async {
      await repository.removeFavorite(event.workKey);
      final currentPage = state.maybeWhen(
        loaded: (works, page, totalPages) => page,
        orElse: () => 1,
      );
      add(_LoadFavorites(page: currentPage));
    });
  }
}
