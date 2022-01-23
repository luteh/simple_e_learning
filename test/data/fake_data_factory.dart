import 'dart:convert';
import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:simple_e_learning/data/remote/model/course_response.dart';

class FakeDataFactory {
  const FakeDataFactory._();

  static final _fileCourseResponse =
      File("test/resources/response/course_response.json").readAsStringSync();

  static Map<String, dynamic> get courseResponseJson =>
      jsonDecode(_fileCourseResponse);
  static CourseResponse get courseResponse =>
      CourseResponse.fromJson(courseResponseJson);
}
