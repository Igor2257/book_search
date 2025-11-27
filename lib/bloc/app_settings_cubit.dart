import 'package:bloc/bloc.dart';
import 'package:book_search/data/dto/app_settings_dto.dart';
import 'package:book_search/domain/repository/app_settings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_cubit.freezed.dart';

@freezed
sealed class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({
    required bool isLight,
  }) = _AppSettingsState;


}

class AppSettingsCubit extends Cubit<AppSettingsState> {
  final AppSettingsRepository repository;

  AppSettingsCubit(this.repository) : super(const AppSettingsState(isLight: true)) {
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final settings = await repository.getSettings();
    emit(AppSettingsState(isLight: settings.isLight));
  }

  Future<void> toggleTheme() async {
    final newState = state.copyWith(isLight: !state.isLight);
    emit(newState);
    await repository.saveSettings(AppSettingsDto(isLight: newState.isLight));
  }
}
