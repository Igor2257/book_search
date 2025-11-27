import 'package:freezed_annotation/freezed_annotation.dart';
import 'link_dto.dart';

part 'book_dto.freezed.dart';
part 'book_dto.g.dart';

@freezed
sealed class BookDto with _$BookDto {
  const factory BookDto({
    required String title,
    String? description,
    @JsonKey(name: 'key') required String key,

    @Default([]) List<int> covers,
    @Default([]) List<String> subjects,

    @JsonKey(name: 'subject_places')
    @Default([]) List<String> subjectPlaces,

    @JsonKey(name: 'subject_times')
    @Default([]) List<String> subjectTimes,

    @JsonKey(name: 'links')
    @Default([]) List<LinkDto> links,
    @JsonKey(name: 'created') Map<String, dynamic>? created,
    @JsonKey(name: 'last_modified') Map<String, dynamic>? lastModified,
  }) = _BookDto;

  factory BookDto.fromJson(Map<String, dynamic> json) =>
      _$BookDtoFromJson(json);
}
