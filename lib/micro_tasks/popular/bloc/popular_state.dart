part of 'popular_bloc.dart';

@freezed
class PopularState with _$PopularState {
  const factory PopularState.initial() = PopularInitial;
  const factory PopularState.loading() = PopularLoading;
  const factory PopularState.loaded({
    required List<WorkEntity> works,
    @Default(1) int page,
    @Default(false) bool hasMore,
  }) = PopularLoaded;
  const factory PopularState.error(String message) = PopularError;
}
