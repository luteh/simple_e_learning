// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CourseResponse _$$_CourseResponseFromJson(Map<String, dynamic> json) =>
    _$_CourseResponse(
      courseName: json['course_name'] as String?,
      progress: json['progress'] as String?,
      curriculum: (json['curriculum'] as List<dynamic>?)
          ?.map((e) => CurriculumResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CourseResponseToJson(_$_CourseResponse instance) =>
    <String, dynamic>{
      'course_name': instance.courseName,
      'progress': instance.progress,
      'curriculum': instance.curriculum,
    };

_$_CurriculumResponse _$$_CurriculumResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CurriculumResponse(
      key: json['key'] as int?,
      id: json['id'],
      type: json['type'] as String?,
      title: json['title'] as String?,
      duration: json['duration'] as int?,
      content: json['content'] as String?,
      meta: json['meta'] as List<dynamic>?,
      status: json['status'] as int?,
      onlineVideoLink: json['online_video_link'] as String?,
      offlineVideoLink: json['offline_video_link'] as String?,
    );

Map<String, dynamic> _$$_CurriculumResponseToJson(
        _$_CurriculumResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'duration': instance.duration,
      'content': instance.content,
      'meta': instance.meta,
      'status': instance.status,
      'online_video_link': instance.onlineVideoLink,
      'offline_video_link': instance.offlineVideoLink,
    };
