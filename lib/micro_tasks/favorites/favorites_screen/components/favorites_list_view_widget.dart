part of '../favorites_screen.dart';

class _FavoritesListViewWidget extends StatelessWidget {
  final List<WorkEntity> favorites;
  final Function(String workKey) onRemoveFavorite;
  final int currentPage;
  final int totalPages;
  final Function(int page) onPageChanged;

  const _FavoritesListViewWidget({
    super.key,
    required this.favorites,
    required this.onRemoveFavorite,
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: favorites.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final work = favorites[index];
              return BookCardWidget(
                work: work,
                onFavouriteTap: () => onRemoveFavorite(work.key),
              );
            },
          ),
        ),
        if (totalPages > 1)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: PaginationBuilderSmall(
              pages: totalPages,
              selectedPage: currentPage,
              onTapPage: onPageChanged,
            ),
          ),
      ],
    );
  }
}
