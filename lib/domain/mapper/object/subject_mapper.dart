// subject_mapper.dart
import 'package:book_search/data/dto/subject_dto.dart';
import 'package:book_search/domain/entities/subject_entity.dart';

import 'work_mapper.dart';

extension SubjectDtoMapper on SubjectDto {
  SubjectEntity toEntity() => SubjectEntity(
    key: key,
    name: name,
    subjectType: subjectType,
    solrQuery: solrQuery,
    workCount: workCount,
    works: works.map((w) => w.toEntity()).toList(),
  );
}
extension SubjectEntityMapper on SubjectEntity {
  SubjectDto toDto() => SubjectDto(
    key: key,
    name: name,
    subjectType: subjectType,
    solrQuery: solrQuery,
    workCount: workCount,
    works: works.map((w) => w.toDto()).toList(),
  );
}
