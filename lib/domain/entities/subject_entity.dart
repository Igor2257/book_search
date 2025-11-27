import 'work_entity.dart';

class SubjectEntity {
  final String key;
  final String name;
  final String subjectType;
  final String? solrQuery;
  final int workCount;
  final List<WorkEntity> works;

  const SubjectEntity({
    required this.key,
    required this.name,
    required this.subjectType,
    this.solrQuery,
    required this.workCount,
    this.works = const [],
  });
}
