import 'package:book_search/data/core/api_client.dart';
import 'package:book_search/data/core/api_endpoints.dart';
import 'package:book_search/domain/hive/app_settings_hive.dart';
import 'package:book_search/domain/hive/favourite_hive.dart';
import 'package:book_search/domain/repository/app_settings_repository.dart';
import 'package:book_search/micro_tasks/book_details/data/ds/book_details_ds.dart';
import 'package:book_search/micro_tasks/book_details/domain/repository/book_details_repository.dart';
import 'package:book_search/micro_tasks/favorites/domain/repository/favorites_repository.dart';
import 'package:book_search/micro_tasks/popular/data/ds/popular_ds.dart';
import 'package:book_search/micro_tasks/popular/domain/repository/popular_repository.dart';
import 'package:book_search/micro_tasks/search/data/ds/search_ds.dart';
import 'package:book_search/micro_tasks/search/domain/repository/search_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class InjectionContainer {
  Future<void> init() async {
    getIt.registerLazySingleton<IApiClient>(
      () => DioApiClient(dio: Dio(BaseOptions(baseUrl: ApiEndpoints.apiUrl()))),
    );
    getIt.registerLazySingleton<FavouriteHive>(() => FavouriteHive());
    getIt.registerLazySingleton<AppSettingsHive>(() => AppSettingsHive());

    getIt.registerLazySingleton<PopularDs>(
      () => PopularDs(getIt.get<IApiClient>()),
    );
    getIt.registerLazySingleton<PopularRepository>(
      () => PopularRepositoryImpl(
        getIt.get<PopularDs>(),
        getIt.get<FavouriteHive>(),
      ),
    );

    getIt.registerLazySingleton<BookDetailsDs>(
      () => BookDetailsDs(getIt.get<IApiClient>()),
    );
    getIt.registerLazySingleton<BookDetailsRepository>(
      () => BookDetailsRepositoryImpl(
        getIt.get<BookDetailsDs>(),
        getIt.get<FavouriteHive>(),
      ),
    );

    getIt.registerLazySingleton<SearchDs>(
      () => SearchDs(getIt.get<IApiClient>()),
    );
    getIt.registerLazySingleton<SearchRepository>(
      () => SearchRepositoryImpl(
        getIt.get<SearchDs>(),
        getIt.get<FavouriteHive>(),
      ),
    );

    getIt.registerLazySingleton<FavoritesRepository>(
      () => FavoritesRepositoryImpl(getIt.get<FavouriteHive>()),
    );

    getIt.registerLazySingleton<AppSettingsRepository>(
      () => AppSettingsRepositoryImpl(getIt.get<AppSettingsHive>()),
    );
  }
}
