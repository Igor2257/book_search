part of '../search_screen.dart';


class _SearchResultsListWidget extends StatelessWidget {
  const _SearchResultsListWidget({
    super.key,
    required this.results,
    required this.hasMore,
    required this.onLoadMore,
  });

  final List<WorkEntity> results;
  final bool hasMore;
  final VoidCallback onLoadMore;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: hasMore ? results.length + 1 : results.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        if (index < results.length) {
          final work = results[index];
          return BookCardWidget(
            work: work,
            onFavouriteTap: () {
             BlocProvider.of<SearchBloc>(context).add(SearchEvent.toggleFavoriteStatus(work));
            },
          );
        } else {
          // Load More кнопка
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: ElevatedButton(
                onPressed: onLoadMore,
                child: const Text('Завантажити ще'),
              ),
            ),
          );
        }
      },
    );
  }
}
