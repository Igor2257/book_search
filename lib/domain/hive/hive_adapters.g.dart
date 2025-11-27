// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class WorkDtoAdapter extends TypeAdapter<WorkDto> {
  @override
  final typeId = 0;

  @override
  WorkDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WorkDto(
      key: fields[0] as String,
      title: fields[1] as String,
      editionCount: (fields[2] as num?)?.toInt(),
      coverId: (fields[3] as num?)?.toInt(),
      coverEditionKey: fields[4] as String?,
      subjects: (fields[5] as List?)?.cast<String>(),
      authors: (fields[6] as List?)?.cast<AuthorDto>(),
      firstPublishYear: (fields[7] as num?)?.toInt(),
      authorNamesJson: (fields[8] as List?)?.cast<String>(),
      description: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WorkDto obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.editionCount)
      ..writeByte(3)
      ..write(obj.coverId)
      ..writeByte(4)
      ..write(obj.coverEditionKey)
      ..writeByte(5)
      ..write(obj.subjects)
      ..writeByte(6)
      ..write(obj.authors)
      ..writeByte(7)
      ..write(obj.firstPublishYear)
      ..writeByte(8)
      ..write(obj.authorNamesJson)
      ..writeByte(9)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WorkDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SubjectDtoAdapter extends TypeAdapter<SubjectDto> {
  @override
  final typeId = 1;

  @override
  SubjectDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SubjectDto(
      key: fields[0] as String,
      name: fields[1] as String,
      subjectType: fields[2] as String,
      solrQuery: fields[3] as String?,
      workCount: (fields[4] as num).toInt(),
      works: (fields[5] as List).cast<WorkDto>(),
    );
  }

  @override
  void write(BinaryWriter writer, SubjectDto obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.subjectType)
      ..writeByte(3)
      ..write(obj.solrQuery)
      ..writeByte(4)
      ..write(obj.workCount)
      ..writeByte(5)
      ..write(obj.works);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SubjectDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AuthorDtoAdapter extends TypeAdapter<AuthorDto> {
  @override
  final typeId = 2;

  @override
  AuthorDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthorDto(key: fields[0] as String, name: fields[1] as String);
  }

  @override
  void write(BinaryWriter writer, AuthorDto obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AppSettingsDtoAdapter extends TypeAdapter<AppSettingsDto> {
  @override
  final typeId = 3;

  @override
  AppSettingsDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppSettingsDto(isLight: fields[0] as bool);
  }

  @override
  void write(BinaryWriter writer, AppSettingsDto obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isLight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettingsDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
