import 'package:book_search/domain/core/result.dart';
import 'package:dio/dio.dart';

abstract class IApiClient {
  Future<Result<Response<T>>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Result<Response<T>>> post<T>(
    String path, {
    dynamic data,
    Options? options,
  });

  Future<Result<Response<T>>> put<T>(String path, {dynamic data});

  Future<Result<Response<T>>> delete<T>(String path, {dynamic data});
}

enum ClientMode { public }

class DioApiClient implements IApiClient {
  final Dio _dio;
  final ClientMode _mode;

  DioApiClient._internal({required Dio dio, required ClientMode mode})
    : _dio = dio,
      _mode = mode {
    _dio.interceptors.clear();
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  factory DioApiClient({required Dio dio}) {
    return DioApiClient._internal(
      dio: dio,
      mode: ClientMode.public, // по умолчанию все запросы публичные
    );
  }

  Future<Result<Response<T>>> _requestWithFallback<T>(
    Future<Response<T>> Function(Dio dio) requestFunc,
  ) async {
    final publicDio = Dio(BaseOptions(baseUrl: _dio.options.baseUrl));
    publicDio.interceptors.add(LogInterceptor(responseBody: true));
    try {
      final resp = await requestFunc(publicDio);
      return Result.success(resp);
    } catch (e) {
      return Result.failure(e.toString(), type: ResultErrorType.unknown);
    }
  }

  // --- Реализация методов ---
  @override
  Future<Result<Response<T>>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) {
    return _requestWithFallback(
      (dio) => dio.get<T>(path, queryParameters: queryParameters),
    );
  }

  @override
  Future<Result<Response<T>>> post<T>(
    String path, {
    dynamic data,
    Options? options,
  }) {
    return _requestWithFallback(
      (dio) => dio.post<T>(path, data: data, options: options),
    );
  }

  @override
  Future<Result<Response<T>>> put<T>(String path, {dynamic data}) {
    return _requestWithFallback((dio) => dio.put<T>(path, data: data));
  }

  @override
  Future<Result<Response<T>>> delete<T>(String path, {dynamic data}) {
    return _requestWithFallback((dio) => dio.delete<T>(path, data: data));
  }
}
