import 'author_entity.dart';

class WorkEntity {
  final String key;
  final String title;
  final int? editionCount;
  final int? coverId;
  final String? coverEditionKey;
  final String? description;
  final List<String> subjects;
  final List<AuthorEntity> authors;
  final int? firstPublishYear;
  final bool isFavorite;

  const WorkEntity({
    required this.key,
    required this.title,
    this.editionCount,
    this.coverId,
    this.coverEditionKey,
    this.description,
    this.subjects = const [],
    this.authors = const [],
    this.firstPublishYear,
    this.isFavorite = false,
  });

  String? get coverUrl => coverId != null
      ? 'https://covers.openlibrary.org/b/id/$coverId-M.jpg'
      : null;

  WorkEntity toggleFavoriteStatus({bool? isFavorite}) {
    return WorkEntity(
      key: key,
      title: title,
      editionCount: editionCount,
      coverId: coverId,
      coverEditionKey: coverEditionKey,
      description: description,
      subjects: subjects,
      authors: authors,
      firstPublishYear: firstPublishYear,
      isFavorite: isFavorite ?? !this.isFavorite,
    );
  }
}
