import 'package:book_search/common/widgets/components/book_card_widget.dart';
import 'package:book_search/common/widgets/components/pagination_builder_small/pagination_builder_small.dart';
import 'package:book_search/common/widgets/components/theme_toggle_button_widget.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/micro_tasks/favorites/bloc/favorites_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'components/favorites_list_view_widget.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Улюблені книги'),
        actions: [ThemeToggleButtonWidget()],
      ),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (favorites, currentPage, totalPages) {
              if (favorites.isEmpty) {
                return const Center(child: Text('Улюблені книги відсутні'));
              }
              return _FavoritesListViewWidget(
                favorites: favorites,
                currentPage: currentPage,
                totalPages: totalPages,
                onRemoveFavorite: (workKey) {
                  context.read<FavoritesBloc>().add(
                    FavoritesEvent.removeFavorite(workKey),
                  );
                },
                onPageChanged: (page) {
                  context.read<FavoritesBloc>().add(
                    FavoritesEvent.loadFavorites(page: page + 1),
                  );
                },
              );
            },
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
