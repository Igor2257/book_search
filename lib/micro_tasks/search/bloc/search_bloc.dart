import 'package:bloc/bloc.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/micro_tasks/search/domain/repository/search_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository repository;
  final int limit = 20;

  SearchBloc(this.repository) : super(const SearchState.initial()) {
    // Новый поиск
    on<_StartSearch>((event, emit) async {
      emit(SearchState.loading(query: event.query));

      final result = await repository.searchWorks(event.query, page: 1, limit: limit);

      if (result.hasError) {
        emit(SearchState.error(query: event.query, message: result.error!.message));
      } else if (result.data!.isEmpty) {
        emit(SearchState.empty(query: event.query));
      } else {
        emit(SearchState.loaded(
          query: event.query,
          results: result.data!,
          page: 1,
          hasMore: result.data!.length == limit,
        ));
      }
    });

    // Загрузка следующей страницы
    on<_LoadMoreSearch>((event, emit) async {
      final currentState = state;
      if (currentState is SearchLoaded && currentState.hasMore) {
        final nextPage = currentState.page + 1;

        final result = await repository.searchWorks(
          currentState.query,
          page: nextPage,
          limit: limit,
        );

        if (result.hasError) return;

        emit(SearchState.loaded(
          query: currentState.query,
          results: [...currentState.results, ...result.data!],
          page: nextPage,
          hasMore: result.data!.length == limit,
        ));
      }
    });

    // Toggle избранного
    on<_ToggleFavoriteStatus>((event, emit) async {
      await repository.toggleFavorite(event.work);

      final currentState = state;
      if (currentState is SearchLoaded) {
        final updatedResults = currentState.results.map((w) {
          if (w.key == event.work.key) return w.toggleFavoriteStatus();
          return w;
        }).toList();

        emit(SearchState.loaded(
          query: currentState.query,
          results: updatedResults,
          page: currentState.page,
          hasMore: currentState.hasMore,
        ));
      }
    });
  }
}
