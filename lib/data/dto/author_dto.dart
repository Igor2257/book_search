import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_dto.freezed.dart';
part 'author_dto.g.dart';

@freezed
sealed class AuthorDto with _$AuthorDto {
  const factory AuthorDto({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'name') required String name,
  }) = _AuthorDto;

  factory AuthorDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorDtoFromJson(json);
}
