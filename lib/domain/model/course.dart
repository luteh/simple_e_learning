
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';

@freezed
class Course with _$Course {
  const factory Course({
    required String courseName,
    required String progress,
    required List<Curriculum> curriculum,
  }) = _Course;
}

@freezed
class Curriculum with _$Curriculum {
  const factory Curriculum({
    required int key,
    required dynamic id,
    required String type,
    required String title,
    required int duration,
    required String content,
    required List<dynamic> meta,
    required int status,
    required String onlineVideoLink,
    required String offlineVideoLink,
  }) = _Curriculum;
}
