part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = FavoritesInitial;
  const factory FavoritesState.loading() = FavoritesLoading;
  const factory FavoritesState.loaded({
    required List<WorkEntity> works,
    required int currentPage,
    required int totalPages,
  }) = FavoritesLoaded;
  const factory FavoritesState.error(String message) = FavoritesError;
}
