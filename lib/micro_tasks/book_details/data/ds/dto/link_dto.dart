import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_dto.freezed.dart';
part 'link_dto.g.dart';

@freezed
sealed class LinkDto with _$LinkDto {
  const factory LinkDto({
    required String url,
    required String title,
  }) = _LinkDto;

  factory LinkDto.fromJson(Map<String, dynamic> json) =>
      _$LinkDtoFromJson(json);
}
