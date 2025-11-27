import 'package:book_search/common/utils/styles/colors/app_colors.dart';
import 'package:book_search/common/widgets/components/custom_button.dart';
import 'package:flutter/material.dart';

part 'pagination_builder_small_item.dart';

class PaginationBuilderSmall extends StatelessWidget {
  const PaginationBuilderSmall({
    super.key,
    required this.pages,
    required this.onTapPage,
    required this.selectedPage,
    this.isSmall = false,
  });

  final int pages;
  final int selectedPage;
  final Function(int page) onTapPage;
  final double itemWidth = 48.0;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    if (pages <= 1) return const SizedBox.shrink();
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _PaginationBuilderSmallItem.first_page(
          onTap: () =>onTapPage(0),
          itemWidth: itemWidth,
          isEnable: selectedPage > 0,
        ),
        _PaginationBuilderSmallItem.previous(
          onTap: () =>onTapPage(selectedPage - 1),
          itemWidth: itemWidth,
          isEnable: selectedPage > 0,
        ),
        Text(
          "Страница ${selectedPage + 1} из $pages",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        _PaginationBuilderSmallItem.next(
          onTap:() => onTapPage(selectedPage + 1),
          itemWidth: itemWidth,
          isEnable: selectedPage < pages - 1,
        ),
        _PaginationBuilderSmallItem.last_page(
          onTap: () =>onTapPage(pages - 1),
          itemWidth: itemWidth,
          isEnable: selectedPage < pages - 1,
        ),
      ],
    );
  }

}
