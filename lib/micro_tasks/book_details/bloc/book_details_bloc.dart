import 'package:bloc/bloc.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/micro_tasks/book_details/domain/repository/book_details_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_details_bloc.freezed.dart';
part 'book_details_event.dart';
part 'book_details_state.dart';

class BookDetailsBloc extends Bloc<BookDetailsEvent, BookDetailsState> {
  final BookDetailsRepository repository;

  BookDetailsBloc(this.repository) : super(const BookDetailsState.initial()) {
    on<_LoadBookDetails>((event, emit) async {
      emit(const BookDetailsState.loading());

      // Загружаем детали и сразу проверяем Hive
      final result = await repository.getBookDetails(event.workId);

      if (result.hasError) {
        emit(BookDetailsState.error(result.error!.message));
      } else {
        emit(BookDetailsState.loaded(result.data!));
      }
    });

    on<_ToggleFavoriteStatus>((event, emit) async {
      await repository.toggleFavorite(event.work);

      // После изменения статуса обновляем isFavorite
      final isFav = await repository.isFavorite(event.work.key);
      emit(BookDetailsState.loaded(event.work.toggleFavoriteStatus(isFavorite: isFav)));
    });
  }
}
