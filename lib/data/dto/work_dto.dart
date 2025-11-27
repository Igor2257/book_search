import 'package:book_search/domain/mapper/json/parse_authors.dart';
import 'package:book_search/domain/mapper/json/parse_description.dart';
import 'package:book_search/domain/mapper/json/parse_string_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'author_dto.dart';

part 'work_dto.freezed.dart';
part 'work_dto.g.dart';

@freezed
sealed class WorkDto with _$WorkDto {
  const factory WorkDto({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'edition_count') int? editionCount,
    @JsonKey(name: 'cover_id') int? coverId,
    @JsonKey(name: 'cover_edition_key') String? coverEditionKey,
    @JsonKey(name: 'subject', fromJson: parseStringList) List<String>? subjects,
    @JsonKey(name: 'authors', fromJson: parseAuthors)
    List<AuthorDto>? authors,
    @JsonKey(name: 'first_publish_year') int? firstPublishYear,
    @JsonKey(name: 'author_name', fromJson: parseStringList) List<String>? authorNamesJson,
    @JsonKey(name: 'description', fromJson: parseDescription) String? description,
  }) = _WorkDto;

  factory WorkDto.fromJson(Map<String, dynamic> json) =>
      _$WorkDtoFromJson(json);
}

