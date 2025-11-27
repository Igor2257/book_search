part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.startSearch(String query) = _StartSearch;
  const factory SearchEvent.loadMoreSearch() = _LoadMoreSearch;
  const factory SearchEvent.toggleFavoriteStatus(WorkEntity work) = _ToggleFavoriteStatus;
}
