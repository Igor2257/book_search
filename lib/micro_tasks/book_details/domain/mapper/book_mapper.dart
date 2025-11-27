

import 'package:book_search/domain/entities/work_entity.dart';
import 'package:book_search/micro_tasks/book_details/data/ds/dto/book_dto.dart';

extension BookDtoMapper on BookDto {
  WorkEntity toEntity() {
    return WorkEntity(
      key: key,
      title: title,
      coverId: (covers.isNotEmpty) ? covers.first : null,
      isFavorite: false,
      description: description,
    );
  }
}
