// work_mapper.dart
import 'package:book_search/data/dto/work_dto.dart';
import 'package:book_search/domain/entities/author_entity.dart';
import 'package:book_search/domain/entities/work_entity.dart';

import 'author_mapper.dart';

extension WorkDtoMapper on WorkDto {
  WorkEntity toEntity() => WorkEntity(
    key: key,
    title: title,
    editionCount: editionCount,
    coverId: coverId,
    coverEditionKey: coverEditionKey,
    subjects: subjects ?? [],
    // если есть authors (Popular API), используем их,
    // иначе используем authorNamesJson (Search API)
    authors:
        authors?.map((a) => a.toEntity()).toList() ??
        authorNamesJson
            ?.map((name) => AuthorEntity(name: name, key: name))
            .toList() ??
        [],
    firstPublishYear: firstPublishYear,
  );
}

extension WorkEntityMapper on WorkEntity {
  WorkDto toDto() => WorkDto(
    key: key,
    title: title,
    editionCount: editionCount,
    coverId: coverId,
    coverEditionKey: coverEditionKey,
    subjects: subjects ?? [],
    authors: authors.map((a) => a.toDto()).toList() ?? [],
    firstPublishYear: firstPublishYear,
  );
}
