import 'package:book_search/data/dto/author_dto.dart';
import 'package:book_search/domain/entities/author_entity.dart';

extension AuthorDtoMapper on AuthorDto {
  AuthorEntity toEntity() => AuthorEntity(
    key: key,
    name: name,
  );
}
extension AuthorEntityMapper on AuthorEntity {
  AuthorDto toDto() => AuthorDto(
    key: key,
    name: name,
  );
}
