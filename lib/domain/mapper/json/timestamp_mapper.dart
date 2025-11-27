class TimestampMapper {
  /// Преобразует JSON-строку в DateTime
  static DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  /// Преобразует DateTime в строку (для сохранения в JSON)
  static String toJson(DateTime dateTime) {
    return dateTime.toIso8601String();
  }

  /// Преобразует nullable строку в nullable DateTime
  static DateTime? fromJsonCouldBeNull(String? json) {
    return json == null ? null : DateTime.parse(json).toLocal();
  }

  /// Преобразует nullable DateTime в nullable строку
  static String? toJsonCouldBeNull(DateTime? dateTime) {
    return dateTime?.toIso8601String();
  }

  /// Список строк -> список DateTime
  static List<DateTime> listFromJson(List<dynamic> jsonList) {
    return jsonList.map((e) => DateTime.parse(e as String).toLocal()).toList();
  }

  /// Список DateTime -> список строк
  static List<String> listToJson(List<DateTime> list) {
    return list.map((e) => e.toIso8601String()).toList();
  }
}
