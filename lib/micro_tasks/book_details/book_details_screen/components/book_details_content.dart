part of '../book_details_screen.dart';

class _BookDetailsContent extends StatelessWidget {
  final WorkEntity work;
  final bool isFavorite;

  const _BookDetailsContent({required this.work, required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    print("work.description ${work.description}");
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Обложка книги
          if (work.coverUrl != null)
            Center(
              child: CachedNetworkImage(imageUrl: work.coverUrl!, height: 250),
            ),
          const SizedBox(height: 16),

          // Название
          Text(
            work.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),

          // Авторы
          if (work.authors.isNotEmpty)
            Text(
              'Автори: ${work.authors.map((a) => a.name).join(', ')}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          const SizedBox(height: 8),

          // Год публикации
          if (work.firstPublishYear != null)
            Text(
              'Перший рік публікації: ${work.firstPublishYear}',
              style: const TextStyle(fontSize: 14),
            ),
          const SizedBox(height: 16),

          // Темы
          if (work.subjects.isNotEmpty)
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: work.subjects
                  .map((subject) => Chip(label: Text(subject)))
                  .toList(),
            ),
          const SizedBox(height: 24),
          if (work.description?.isNotEmpty == true)
            Text(work.description!, style: const TextStyle(fontSize: 14)),
          const SizedBox(height: 24),

          // Кнопка "Улюблене"
          Center(
            child: ElevatedButton.icon(
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
              label: Text(
                isFavorite ? 'Видалити з Улюбленого' : 'Додати в Улюблене',
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
              onPressed: () {
                context.read<BookDetailsBloc>().add(
                  BookDetailsEvent.toggleFavoriteStatus(work),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
