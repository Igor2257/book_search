part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchInitial;
  const factory SearchState.loading({required String query}) = SearchLoading;
  const factory SearchState.loaded({
    required String query,
    required List<WorkEntity> results,
    required int page,
    required bool hasMore,
  }) = SearchLoaded;
  const factory SearchState.empty({required String query}) = SearchEmpty;
  const factory SearchState.error({required String query, required String message}) = SearchError;
}
