// search_ds.dart
import 'package:book_search/data/core/api_client.dart';
import 'package:book_search/data/dto/work_dto.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:book_search/domain/core/result.dart';

class SearchDs {
  final IApiClient _apiClient;

  SearchDs(this._apiClient);

  Future<Result<List<WorkDto>>> searchWorks(
      String query, {
        int page = 1,
        int limit = 20,
      }) async {
    try {
      final offset = (page - 1) * limit;
      final response = await _apiClient.get(
        'https://openlibrary.org/search.json',
        queryParameters: {'q': query, 'limit': limit, 'offset': offset},
      );
      if (response.hasError) {
        return Result.failure(
          response.error!.message,
          type: response.error!.type,
        );
      }
      if (response.data?.statusCode == 200) {
        final worksJson = (response.data!.data['docs'] as List).cast<Map<String, dynamic>>();
        final works = worksJson.map((e) => WorkDto.fromJson(e)).toList();
        return Result.success(works);
      }
      return Result.failure('Помилка пошуку: ${response.data?.statusCode}');
    } catch (e, trace) {

      return Result.failure('Помилка пошуку: $e');
    }
  }
}
