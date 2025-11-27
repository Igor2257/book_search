import 'package:book_search/data/dto/author_dto.dart';

List<AuthorDto>? parseAuthors(dynamic json) {
  if (json == null) return null;
  if (json is List) {
    return json.map((e) {
      if (e is Map<String, dynamic>) {
        // плоский вариант: {key, name}
        if (e.containsKey('key') && e.containsKey('name')) {
          return AuthorDto.fromJson(e);
        }
        // вложенный вариант: {author: {key: ...}}
        if (e.containsKey('author') && e['author'] is Map<String, dynamic>) {
          return AuthorDto(
            key: e['author']['key'] ?? '',
            name: '', // имени нет, заполняем пустой строкой
          );
        }
      }
      throw Exception('Unknown author format: $e');
    }).toList();
  }
  return null;
}
