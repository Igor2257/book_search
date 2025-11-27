import 'package:book_search/data/dto/app_settings_dto.dart';
import 'package:book_search/data/dto/author_dto.dart';
import 'package:book_search/data/dto/subject_dto.dart';
import 'package:book_search/data/dto/work_dto.dart';
import 'package:hive_ce/hive.dart';

@GenerateAdapters([
  AdapterSpec<WorkDto>(),
  AdapterSpec<SubjectDto>(),
  AdapterSpec<AuthorDto>(),
  AdapterSpec<AppSettingsDto>(),
])
part 'hive_adapters.g.dart';