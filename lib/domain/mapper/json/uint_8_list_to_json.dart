import 'dart:convert';
import 'dart:typed_data';

class Uint8ListToJson {
  static List<String> toJson(List<Uint8List> list) {
    return list.map((e) => base64Encode(e.toList())).toList();
  }

  static List<String>? toJsonCouldBeNull(List<Uint8List>? list) {
    if (list == null) return null;
    return list.map((e) => base64Encode(e.toList())).toList();
  }
  static List<Uint8List>? fromJsonCouldBeNull(List<dynamic>? list) {
    if (list == null) return null;
    // Преобразуем каждый элемент списка (который является строкой) обратно в Uint8List
    return list.map((e) => base64Decode(e as String)).toList();
  }
}
