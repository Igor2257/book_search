String? parseDescription(dynamic json) {
  if (json == null) return null;
  if (json is String) return json;
  if (json is Map<String, dynamic>) return json['value'] as String?;
  return null;
}
