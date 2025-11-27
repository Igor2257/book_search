class ListToJson {
  static List<Map<String, dynamic>> toJson(List<dynamic> list) {
    return list.map((e) => e.toJson() as Map<String, dynamic>).toList();
  }

  static List<Map<String, dynamic>>? toJsonCouldBeNull(List<dynamic>? list) {
    if (list == null) return null;
    return list.map((e) => e.toJson() as Map<String, dynamic>).toList();
  }
}
