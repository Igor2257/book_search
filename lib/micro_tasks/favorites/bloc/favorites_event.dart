part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.loadFavorites({int? page}) = _LoadFavorites;
  const factory FavoritesEvent.removeFavorite(String workKey) = _RemoveFavorite;
}
