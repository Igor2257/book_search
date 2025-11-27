List<String>? parseStringList(dynamic json) {
  if (json == null) return null;
  if (json is List) return json.map((e) => e.toString()).toList();
  return null;
}
