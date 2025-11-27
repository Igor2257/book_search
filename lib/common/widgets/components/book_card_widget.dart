import 'package:book_search/common/utils/routes/router_helper.dart';
import 'package:book_search/common/widgets/components/ink_well_widget.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'favorite_button_widget.dart';

class BookCardWidget extends StatelessWidget {
  final WorkEntity work;
  final Function() onFavouriteTap;

  const BookCardWidget({
    super.key,
    required this.work,
    required this.onFavouriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: () {
        final navigator = BookDetailsNavigator(GoRouter.of(context));
        navigator.openBookDetails(
          context,
          work.key.replaceFirst("/works/", ""),
        );
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // Обложка книги
              SizedBox(
                width: 60,
                height: 90,
                child: work.coverUrl != null
                    ? CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: work.coverUrl!,
                      )
                    : Container(color: Colors.grey[300]),
              ),
              const SizedBox(width: 12),
              // Информация
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      work.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (work.authors.isNotEmpty)
                      Text(
                        work.authors.join(', '),
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    if (work.firstPublishYear != null)
                      Text(
                        'First published: ${work.firstPublishYear}',
                        style: const TextStyle(fontSize: 12),
                      ),
                  ],
                ),
              ),
              // Кнопка "Улюблене"
              _FavoriteButtonWidget(
                isFavorite: work.isFavorite,
                onTap: onFavouriteTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
