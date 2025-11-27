import 'package:book_search/micro_tasks/favorites/bloc/favorites_bloc.dart';
import 'package:book_search/micro_tasks/popular/bloc/popular_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MainScaffold extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainScaffold({required this.navigationShell});

  @override
  State<MainScaffold> createState() => MainScaffoldState();
}

class MainScaffoldState extends State<MainScaffold> {
  @override
  void initState() {
    super.initState();
    _loadCurrentTab();
  }

  void _loadCurrentTab({int? selectedIndex}) {
    final index =selectedIndex?? widget.navigationShell.currentIndex;
    print("index $index");
    if (index == 0) {
      context.read<PopularBloc>().add(const PopularEvent.loadPopular(false));
    } else if (index == 2) {
      context.read<FavoritesBloc>().add(const FavoritesEvent.loadFavorites());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (index) {
          widget.navigationShell.goBranch(index);
          _loadCurrentTab(selectedIndex: index); // <-- вызываем загрузку при смене вкладки
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Popular',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
