import 'package:freezed_annotation/freezed_annotation.dart';
import 'work_dto.dart';

part 'subject_dto.freezed.dart';
part 'subject_dto.g.dart';

@freezed
sealed class SubjectDto with _$SubjectDto {
  const factory SubjectDto({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'subject_type') required String subjectType,
    @JsonKey(name: 'solr_query') String? solrQuery,
    @JsonKey(name: 'work_count') required int workCount,
    @JsonKey(name: 'works') required List<WorkDto> works,
  }) = _SubjectDto;

  factory SubjectDto.fromJson(Map<String, dynamic> json) =>
      _$SubjectDtoFromJson(json);
}
