part of 'book_details_bloc.dart';

@freezed
class BookDetailsEvent with _$BookDetailsEvent {
  const factory BookDetailsEvent.loadBookDetails(String workId) = _LoadBookDetails;
  const factory BookDetailsEvent.toggleFavoriteStatus(WorkEntity work) = _ToggleFavoriteStatus;
}