part of 'book_card_widget.dart';

class _FavoriteButtonWidget extends StatelessWidget {
  final bool isFavorite;
  final Function() onTap;

  const _FavoriteButtonWidget({
    super.key,
    required this.isFavorite,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        onTap();
      },
    );
  }
}
