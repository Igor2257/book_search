import 'dart:convert';
import 'dart:typed_data';

class Uint8ObjectToJson {
  static String toJson(Uint8List list) {
    return base64Encode(list.toList());
  }
  static String? toJsonCouldBeNull(Uint8List? list) {
    if (list == null) return null;
    return base64Encode(list.toList());
  }
  static Uint8List? fromJsonCouldBeNull(String? base64String) {
    if (base64String == null) return null;
    return base64Decode(base64String);
  }
  static Uint8List fromJson(String base64String) {
    return base64Decode(base64String);
  }
}
