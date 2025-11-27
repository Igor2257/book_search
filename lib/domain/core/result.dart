enum ResultErrorType { none, unauthorized, network, server, unknown }

class ResultError {
  final String message;
  final ResultErrorType type;

  ResultError({required this.message, required this.type});

  factory ResultError.empty(){
    return ResultError(message: "", type: ResultErrorType.none);
  }

  @override
  String toString() {
    return "ResultError: $message $type";
  }
}

class Result<T> {
  final T? data;
  final ResultError? error;

  // Конструктор успешного результата
  Result.success(this.data) : error = null;

  // Конструктор ошибки
  Result.failure(String message, {
    ResultErrorType type = ResultErrorType.unknown,
  })
      : data = null,
        error = ResultError(message: message, type: type);

  bool get hasError => error != null;
}
