import 'package:book_search/bloc/app_settings_cubit.dart';
import 'package:book_search/common/utils/routes/app_routes.dart';
import 'package:book_search/domain/di/injection_container.dart';
import 'package:book_search/domain/repository/app_settings_repository.dart';
import 'package:book_search/micro_tasks/favorites/bloc/favorites_bloc.dart';
import 'package:book_search/micro_tasks/favorites/domain/repository/favorites_repository.dart';
import 'package:book_search/micro_tasks/popular/bloc/popular_bloc.dart';
import 'package:book_search/micro_tasks/popular/domain/repository/popular_repository.dart';
import 'package:book_search/micro_tasks/search/bloc/search_bloc.dart';
import 'package:book_search/micro_tasks/search/domain/repository/search_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/hive/hive_initialize.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final hiveInit = HiveInitialize();
  final initialized = await hiveInit.initialize();

  if (!initialized) {
    // Можно вывести ошибку или fallback
    print("Hive не удалось инициализировать!");
  }

  await InjectionContainer().init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              PopularBloc(getIt.get<PopularRepository>())
                ..add(const PopularEvent.loadPopular(false)),
        ),
        BlocProvider(create: (_) => SearchBloc(getIt.get<SearchRepository>())),
        BlocProvider(
          create: (_) => FavoritesBloc(getIt.get<FavoritesRepository>()),
        ),
        BlocProvider(
          create: (context) =>
              AppSettingsCubit(getIt.get<AppSettingsRepository>()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingsCubit, AppSettingsState>(
      builder: (context, state) {
        return MaterialApp.router(
          theme: state.isLight ? ThemeData.light() : ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRoutes.routes,
        );
      },
    );
  }
}
