import 'package:book_search/domain/hive/hive_type_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_dto.freezed.dart';
part 'app_settings_dto.g.dart';

@freezed
sealed class AppSettingsDto with _$AppSettingsDto {
  factory AppSettingsDto({
    @JsonKey(name: 'theme') required bool isLight,
  }) = _AppSettingsDto;
  factory AppSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsDtoFromJson(json);
}
