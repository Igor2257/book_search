// popular_ds.dart
import 'package:book_search/data/core/api_client.dart';
import 'package:book_search/data/dto/subject_dto.dart';
import 'package:book_search/domain/core/result.dart';

class PopularDs {

  final IApiClient _apiClient;

  PopularDs(this._apiClient);

  Future<Result<SubjectDto>> fetchPopular({int limit = 20}) async {
    try {
      final response = await _apiClient.get(
        'https://openlibrary.org/subjects/bestseller.json',
        queryParameters: {'limit': limit},
      );
      if (response.hasError) {
        return Result.failure(
          response.error!.message,
          type: response.error!.type,
        );
      }
      if (response.data?.statusCode == 200) {
        return Result.success(SubjectDto.fromJson(response.data!.data));
      }
      return Result.failure(
        'Помилка завантаження: ${response.data?.statusCode}',
      );
    } catch (e, trace) {
      return Result.failure('Не вдалося завантажити популярні книги: $e');
    }
  }
}
