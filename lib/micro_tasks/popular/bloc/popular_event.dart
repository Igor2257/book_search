part of 'popular_bloc.dart';
@freezed
class PopularEvent with _$PopularEvent {
  const factory PopularEvent.loadPopular(bool loadMore) = _LoadPopular;
  const factory PopularEvent.toggleFavoriteStatus(WorkEntity work) = _ToggleFavoriteStatus;
}
