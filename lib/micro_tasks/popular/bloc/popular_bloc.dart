import 'package:bloc/bloc.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/micro_tasks/popular/domain/repository/popular_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'popular_bloc.freezed.dart';
part 'popular_event.dart';
part 'popular_state.dart';
class PopularBloc extends Bloc<PopularEvent, PopularState> {
  final PopularRepository repository;
  final int limit;

  PopularBloc(this.repository, {this.limit = 20}) : super(const PopularState.initial()) {
    on<_LoadPopular>((event, emit) async {
      final currentState = state;
      List<WorkEntity> oldWorks = [];
      int page = 1;

      if (currentState is PopularLoaded && event.loadMore) {
        oldWorks = currentState.works;
        page = currentState.page + 1;
      } else {
        emit(const PopularState.loading());
      }

      final result = await repository.getPopular(limit: limit);

      if (result.hasError) {
        emit(PopularState.error(result.error!.message));
      } else {
        final newWorks = result.data!;
        emit(PopularState.loaded(
          works: [...oldWorks, ...newWorks],
          page: page,
          hasMore: newWorks.length == limit,
        ));
      }
    });

    on<_ToggleFavoriteStatus>((event, emit) async {
      await repository.toggleFavorite(event.work);

      final currentState = state;
      if (currentState is PopularLoaded) {
        final updatedWorks = currentState.works.map((w) {
          if (w.key == event.work.key) {
            return w.toggleFavoriteStatus();
          }
          return w;
        }).toList();

        emit(currentState.copyWith(works: updatedWorks));
      }
    });
  }
}

