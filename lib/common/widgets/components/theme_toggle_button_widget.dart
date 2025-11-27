import 'package:book_search/bloc/app_settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeToggleButtonWidget extends StatelessWidget {
  const ThemeToggleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppSettingsCubit, AppSettingsState>(
      builder: (context, state) {
        return IconButton(
          icon: Icon(state.isLight ? Icons.dark_mode : Icons.light_mode),
          onPressed: () => context.read<AppSettingsCubit>().toggleTheme(),
        );
      },
    );
  }
}
