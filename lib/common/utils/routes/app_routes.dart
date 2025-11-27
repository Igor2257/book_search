import 'package:book_search/common/widgets/components/main_scaffold.dart';
import 'package:book_search/domain/di/injection_container.dart';
import 'package:book_search/micro_tasks/book_details/bloc/book_details_bloc.dart';
import 'package:book_search/micro_tasks/book_details/book_details_screen/book_details_screen.dart';
import 'package:book_search/micro_tasks/book_details/domain/repository/book_details_repository.dart';
import 'package:book_search/micro_tasks/favorites/bloc/favorites_bloc.dart';
import 'package:book_search/micro_tasks/favorites/favorites_screen/favorites_screen.dart';
import 'package:book_search/micro_tasks/popular/bloc/popular_bloc.dart';
import 'package:book_search/micro_tasks/popular/popular_screen/popular_screen.dart';
import 'package:book_search/micro_tasks/search/bloc/search_bloc.dart';
import 'package:book_search/micro_tasks/search/search_screen/search_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String popularScreen = '/popular';
  static const String searchScreen = '/search';
  static const String favoritesScreen = '/favorites';
  static const String bookDetails = '/book_details';

  static GoRouter get routes => GoRouter(
    initialLocation: popularScreen,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            MainScaffold(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: popularScreen,
                builder: (context, state) => const PopularScreen(),
                routes: [
                  GoRoute(
                    name: "popular_book_details",
                    path: '/book_details/:workId', // абсолютный путь
                    onExit: (context, state) {
                      context.read<PopularBloc>().add(
                        const PopularEvent.loadPopular(false),
                      );
                      return true;
                    },
                    builder: (context, state) {
                      final workId = state.pathParameters['workId']!;
                      return BlocProvider(
                        create: (_) =>
                            BookDetailsBloc(getIt.get<BookDetailsRepository>())
                              ..add(BookDetailsEvent.loadBookDetails(workId)),
                        child: const BookDetailsScreen(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: searchScreen,
                builder: (context, state) => const SearchScreen(),
                routes: [
                  GoRoute(
                    name: "search_book_details",
                    path: '/book_details/:workId', // абсолютный путь
                    onExit: (context, state) {
                      context.read<SearchBloc>().add(
                        const SearchEvent.loadMoreSearch(),
                      );
                      return true;
                    },
                    builder: (context, state) {
                      final workId = state.pathParameters['workId']!;
                      return BlocProvider(
                        create: (_) =>
                            BookDetailsBloc(getIt.get<BookDetailsRepository>())
                              ..add(BookDetailsEvent.loadBookDetails(workId)),
                        child: const BookDetailsScreen(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: favoritesScreen,
                builder: (context, state) => const FavoritesScreen(),
                routes: [
                  GoRoute(
                    name: "favorites_book_details",
                    path: '/book_details/:workId', // абсолютный путь
                    onExit: (context, state) {
                      context.read<FavoritesBloc>().add(
                        const FavoritesEvent.loadFavorites(),
                      );

                      return true;
                    },
                    builder: (context, state) {
                      final workId = state.pathParameters['workId']!;
                      return BlocProvider(
                        create: (_) =>
                            BookDetailsBloc(getIt.get<BookDetailsRepository>())
                              ..add(BookDetailsEvent.loadBookDetails(workId)),
                        child: const BookDetailsScreen(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
