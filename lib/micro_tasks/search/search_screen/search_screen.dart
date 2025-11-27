import 'package:book_search/common/widgets/components/book_card_widget.dart';
import 'package:book_search/common/widgets/components/theme_toggle_button_widget.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/micro_tasks/search/bloc/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'components/search_results_list_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Пошук книг'),
        actions: [ThemeToggleButtonWidget()],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: const InputDecoration(
                      hintText: 'Введіть назву книги',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    final query = searchController.text.trim();
                    if (query.isNotEmpty) {
                      context.read<SearchBloc>().add(
                        SearchEvent.startSearch(query),
                      );
                    }
                  },
                  child: const Text('Пошук'),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return state.when(
                  initial: () =>
                      const Center(child: Text('Введіть запит для пошуку')),
                  loading: (query) =>
                      const Center(child: CircularProgressIndicator()),
                  empty: (query) => Center(
                    child: Text('Результатів не знайдено для "$query"'),
                  ),
                  error: (query, message) =>
                      Center(child: Text('Помилка: $message')),
                  loaded: (query, results, page, hasMore) =>
                      _SearchResultsListWidget(
                        results: results,
                        hasMore: hasMore,
                        onLoadMore: () {
                          context.read<SearchBloc>().add(
                            const SearchEvent.loadMoreSearch(),
                          );
                        },
                      ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
