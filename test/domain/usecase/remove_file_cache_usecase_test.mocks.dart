// Mocks generated by Mockito 5.0.17 from annotations
// in simple_e_learning/test/domain/usecase/remove_file_cache_usecase_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;
import 'dart:io' as _i7;

import 'package:fpdart/fpdart.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:simple_e_learning/domain/core/result/failure.dart' as _i5;
import 'package:simple_e_learning/domain/model/course.dart' as _i6;
import 'package:simple_e_learning/domain/repository/my_repository.dart' as _i3;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [MyRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMyRepository extends _i1.Mock implements _i3.MyRepository {
  MockMyRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.Course>> fetchCourses() =>
      (super.noSuchMethod(Invocation.method(#fetchCourses, []),
              returnValue: Future<_i2.Either<_i5.Failure, _i6.Course>>.value(
                  _FakeEither_0<_i5.Failure, _i6.Course>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i6.Course>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, bool>> removeFileCache({String? key}) =>
      (super.noSuchMethod(Invocation.method(#removeFileCache, [], {#key: key}),
              returnValue: Future<_i2.Either<_i5.Failure, bool>>.value(
                  _FakeEither_0<_i5.Failure, bool>()))
          as _i4.Future<_i2.Either<_i5.Failure, bool>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i7.File?>> getFileCache({String? key}) =>
      (super.noSuchMethod(Invocation.method(#getFileCache, [], {#key: key}),
              returnValue: Future<_i2.Either<_i5.Failure, _i7.File?>>.value(
                  _FakeEither_0<_i5.Failure, _i7.File?>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i7.File?>>);
  @override
  _i4.Future<_i2.Either<_i5.Failure, _i7.File>> downloadFile({String? url}) =>
      (super.noSuchMethod(Invocation.method(#downloadFile, [], {#url: url}),
              returnValue: Future<_i2.Either<_i5.Failure, _i7.File>>.value(
                  _FakeEither_0<_i5.Failure, _i7.File>()))
          as _i4.Future<_i2.Either<_i5.Failure, _i7.File>>);
}
