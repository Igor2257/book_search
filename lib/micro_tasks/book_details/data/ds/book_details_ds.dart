import 'package:book_search/data/core/api_client.dart';
import 'package:book_search/data/dto/work_dto.dart';
import 'package:book_search/domain/core/result.dart';
import 'package:book_search/micro_tasks/book_details/data/ds/dto/book_dto.dart';

class BookDetailsDs {
  final IApiClient _apiClient;

  BookDetailsDs(this._apiClient);

  Future<Result<BookDto>> fetchWorkDetails(String workId) async {
    try {
      final response = await _apiClient.get(
        'https://openlibrary.org/works/$workId.json',
      );
      if (response.hasError) {
        return Result.failure(
          response.error!.message,
          type: response.error!.type,
        );
      }
      if (response.data?.statusCode == 200) {
        return Result.success(BookDto.fromJson(response.data!.data));
      }
      return Result.failure(
        'Не вдалося завантажити деталі книги: ${response.data?.statusCode}',
      );
    } catch (e, trace) {
      print(e);
      return Result.failure('Помилка при завантаженні деталей: $e');
    }
  }
}
