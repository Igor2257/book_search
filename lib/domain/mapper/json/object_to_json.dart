class ObjectToJson {
  static Map<String, dynamic> toJson(dynamic object) {
    return object.toJson() as Map<String, dynamic>;
  }
  static Map<String, dynamic>? toJsonCouldBeNull(dynamic object) {
    if(object==null){
      return null;
    }
    return object.toJson() as Map<String, dynamic>;
  }
}
