class AuthorEntity {
  final String key;
  final String name;

  const AuthorEntity({required this.key, required this.name});

  @override
  String toString() {
    return name;
  }
}
