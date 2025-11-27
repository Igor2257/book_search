import 'package:book_search/common/widgets/components/theme_toggle_button_widget.dart';
import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/micro_tasks/book_details/bloc/book_details_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'components/book_details_content.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Деталі книги'),
        actions: [ThemeToggleButtonWidget()],
      ),
      body: BlocBuilder<BookDetailsBloc, BookDetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (work) =>
                _BookDetailsContent(work: work, isFavorite: work.isFavorite),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
