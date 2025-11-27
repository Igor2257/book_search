import 'package:book_search/common/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailsNavigator {
  final GoRouter _router;

  BookDetailsNavigator(this._router);

  void openBookDetails(BuildContext context, String workId) {
    final currentPath = GoRouter.of(context).state.uri.path;

    final routeName = _getRouteNameForCurrentBranch(currentPath);

    _router.pushNamed(
      routeName,
      pathParameters: {'workId': workId},
    );
  }

  String _getRouteNameForCurrentBranch(String currentPath) {
    if (currentPath.startsWith(AppRoutes.popularScreen)) {
      return "popular_book_details";
    } else if (currentPath.startsWith(AppRoutes.searchScreen)) {
      return "search_book_details";
    } else if (currentPath.startsWith(AppRoutes.favoritesScreen)) {
      return "favorites_book_details";
    } else {
      throw Exception("Unknown branch: $currentPath");
    }
  }
}
