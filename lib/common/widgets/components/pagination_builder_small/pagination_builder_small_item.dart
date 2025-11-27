part of 'pagination_builder_small.dart';

class _PaginationBuilderSmallItem extends StatelessWidget {
  const _PaginationBuilderSmallItem({
    super.key,
    required this.onTap,
    required int page,
    required BuildContext context,
    required this.itemWidth,
    required this.isEnable,
  }) : icon = Icons.add;

  final Function() onTap;
  final IconData icon;
  final double itemWidth;
  final bool isEnable;

  const _PaginationBuilderSmallItem.previous({
    super.key,
    required this.onTap,
    required this.itemWidth,

    required this.isEnable,
  }) : icon = Icons.chevron_left;

  const _PaginationBuilderSmallItem.next({
    super.key,
    required this.onTap,
    required this.itemWidth,

    required this.isEnable,
  }) : icon = Icons.chevron_right;

  const _PaginationBuilderSmallItem.first_page({
    super.key,
    required this.onTap,
    required this.itemWidth,

    required this.isEnable,
  }) : icon = Icons.first_page;

  const _PaginationBuilderSmallItem.last_page({
    super.key,
    required this.onTap,
    required this.itemWidth,

    required this.isEnable,
  }) : icon = Icons.last_page;

  @override
  Widget build(BuildContext context) {
    final color = isEnable ? mainBlack : mainBlack.withOpacity(0.5);
    return CustomButton(
      onTap: isEnable ? onTap : () {},
      padding: EdgeInsets.all(4),
      borderColor: color,
      child: Icon(icon, color: color),
    );
  }
}
