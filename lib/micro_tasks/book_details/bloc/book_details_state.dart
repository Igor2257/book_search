part of 'book_details_bloc.dart';

@freezed
class BookDetailsState with _$BookDetailsState {
  const factory BookDetailsState.initial() = _BookDetailsInitial;
  const factory BookDetailsState.loading() = _BookDetailsLoading;
  const factory BookDetailsState.loaded(WorkEntity work) = _BookDetailsLoaded;
  const factory BookDetailsState.error(String message) = _BookDetailsError;
}
