// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_e_learning/domain/model/course.dart';

part 'course_response.freezed.dart';
part 'course_response.g.dart';

@freezed
class CourseResponse with _$CourseResponse {
  const CourseResponse._();
  const factory CourseResponse({
    @JsonKey(name: 'course_name') required String? courseName,
    required String? progress,
    required List<CurriculumResponse>? curriculum,
  }) = _CourseResponse;

  factory CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseFromJson(json);

  Course toDomain() => Course(
        courseName: courseName ?? '',
        progress: progress ?? '',
        curriculum: curriculum?.map((e) => e.toDomain()).toList() ?? [],
      );
}

@freezed
class CurriculumResponse with _$CurriculumResponse {
  const CurriculumResponse._();
  const factory CurriculumResponse({
    required int? key,
    required dynamic id,
    required String? type,
    required String? title,
    required int? duration,
    required String? content,
    required List<dynamic>? meta,
    required int? status,
    @JsonKey(name: 'online_video_link') required String? onlineVideoLink,
    @JsonKey(name: 'offline_video_link') required String? offlineVideoLink,
  }) = _CurriculumResponse;

  factory CurriculumResponse.fromJson(Map<String, dynamic> json) =>
      _$CurriculumResponseFromJson(json);

  Curriculum toDomain() => Curriculum(
        key: key ?? 0,
        id: id ?? 0,
        type: type ?? '',
        title:  title ?? '',
        duration: duration ?? 0,
        content: content ?? '',
        meta: meta ?? [],
        status: status ?? 0,
        onlineVideoLink: onlineVideoLink ?? '',
        offlineVideoLink: offlineVideoLink ?? '',
      );
}
