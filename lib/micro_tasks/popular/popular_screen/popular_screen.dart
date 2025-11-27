import 'package:book_search/common/widgets/components/book_card_widget.dart';
import 'package:book_search/common/widgets/components/theme_toggle_button_widget.dart';
import 'package:book_search/micro_tasks/popular/bloc/popular_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Books'),
        actions: [ThemeToggleButtonWidget()],
      ),
      body: BlocBuilder<PopularBloc, PopularState>(
        builder: (context, state) {
          if (state is PopularInitial || state is PopularLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PopularError) {
            return Center(child: Text(state.message));
          } else if (state is PopularLoaded) {
            final works = state.works;
            return NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification.metrics.pixels >=
                        notification.metrics.maxScrollExtent - 200 &&
                    state.hasMore) {
                  context.read<PopularBloc>().add(
                    const PopularEvent.loadPopular(true),
                  );
                }
                return false;
              },
              child: ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: works.length + (state.hasMore ? 1 : 0),
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  if (index < works.length) {
                    final work = works[index];
                    return BookCardWidget(
                      work: work,
                      onFavouriteTap: () {
                        context.read<PopularBloc>().add(
                          PopularEvent.toggleFavoriteStatus(work),
                        );
                      },
                    );
                  } else {
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Center(child: CircularProgressIndicator()),
                    );
                  }
                },
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
