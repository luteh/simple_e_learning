// Mocks generated by Mockito 5.0.17 from annotations
// in simple_e_learning/test/domain/usecase/download_file_usecase_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;
import 'dart:convert' as _i8;
import 'dart:io' as _i3;
import 'dart:typed_data' as _i9;

import 'package:fpdart/fpdart.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:simple_e_learning/domain/core/result/failure.dart' as _i6;
import 'package:simple_e_learning/domain/model/course.dart' as _i7;
import 'package:simple_e_learning/domain/repository/my_repository.dart' as _i4;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeFile_1 extends _i1.Fake implements _i3.File {}

class _FakeUri_2 extends _i1.Fake implements Uri {}

class _FakeDirectory_3 extends _i1.Fake implements _i3.Directory {}

class _FakeDateTime_4 extends _i1.Fake implements DateTime {}

class _FakeRandomAccessFile_5 extends _i1.Fake implements _i3.RandomAccessFile {
}

class _FakeIOSink_6 extends _i1.Fake implements _i3.IOSink {}

class _FakeFileStat_7 extends _i1.Fake implements _i3.FileStat {}

class _FakeFileSystemEntity_8 extends _i1.Fake implements _i3.FileSystemEntity {
}

/// A class which mocks [MyRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMyRepository extends _i1.Mock implements _i4.MyRepository {
  MockMyRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.Either<_i6.Failure, _i7.Course>> fetchCourses() =>
      (super.noSuchMethod(Invocation.method(#fetchCourses, []),
              returnValue: Future<_i2.Either<_i6.Failure, _i7.Course>>.value(
                  _FakeEither_0<_i6.Failure, _i7.Course>()))
          as _i5.Future<_i2.Either<_i6.Failure, _i7.Course>>);
  @override
  _i5.Future<_i2.Either<_i6.Failure, bool>> removeFileCache({String? key}) =>
      (super.noSuchMethod(Invocation.method(#removeFileCache, [], {#key: key}),
              returnValue: Future<_i2.Either<_i6.Failure, bool>>.value(
                  _FakeEither_0<_i6.Failure, bool>()))
          as _i5.Future<_i2.Either<_i6.Failure, bool>>);
  @override
  _i5.Future<_i2.Either<_i6.Failure, _i3.File?>> getFileCache({String? key}) =>
      (super.noSuchMethod(Invocation.method(#getFileCache, [], {#key: key}),
              returnValue: Future<_i2.Either<_i6.Failure, _i3.File?>>.value(
                  _FakeEither_0<_i6.Failure, _i3.File?>()))
          as _i5.Future<_i2.Either<_i6.Failure, _i3.File?>>);
  @override
  _i5.Future<_i2.Either<_i6.Failure, _i3.File>> downloadFile({String? url}) =>
      (super.noSuchMethod(Invocation.method(#downloadFile, [], {#url: url}),
              returnValue: Future<_i2.Either<_i6.Failure, _i3.File>>.value(
                  _FakeEither_0<_i6.Failure, _i3.File>()))
          as _i5.Future<_i2.Either<_i6.Failure, _i3.File>>);
}

/// A class which mocks [File].
///
/// See the documentation for Mockito's code generation for more information.
class MockFile extends _i1.Mock implements _i3.File {
  MockFile() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.File get absolute => (super.noSuchMethod(Invocation.getter(#absolute),
      returnValue: _FakeFile_1()) as _i3.File);
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  Uri get uri =>
      (super.noSuchMethod(Invocation.getter(#uri), returnValue: _FakeUri_2())
          as Uri);
  @override
  bool get isAbsolute =>
      (super.noSuchMethod(Invocation.getter(#isAbsolute), returnValue: false)
          as bool);
  @override
  _i3.Directory get parent => (super.noSuchMethod(Invocation.getter(#parent),
      returnValue: _FakeDirectory_3()) as _i3.Directory);
  @override
  _i5.Future<_i3.File> create({bool? recursive = false}) => (super.noSuchMethod(
          Invocation.method(#create, [], {#recursive: recursive}),
          returnValue: Future<_i3.File>.value(_FakeFile_1()))
      as _i5.Future<_i3.File>);
  @override
  void createSync({bool? recursive = false}) => super.noSuchMethod(
      Invocation.method(#createSync, [], {#recursive: recursive}),
      returnValueForMissingStub: null);
  @override
  _i5.Future<_i3.File> rename(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#rename, [newPath]),
              returnValue: Future<_i3.File>.value(_FakeFile_1()))
          as _i5.Future<_i3.File>);
  @override
  _i3.File renameSync(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#renameSync, [newPath]),
          returnValue: _FakeFile_1()) as _i3.File);
  @override
  _i5.Future<_i3.File> copy(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#copy, [newPath]),
              returnValue: Future<_i3.File>.value(_FakeFile_1()))
          as _i5.Future<_i3.File>);
  @override
  _i3.File copySync(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#copySync, [newPath]),
          returnValue: _FakeFile_1()) as _i3.File);
  @override
  _i5.Future<int> length() =>
      (super.noSuchMethod(Invocation.method(#length, []),
          returnValue: Future<int>.value(0)) as _i5.Future<int>);
  @override
  int lengthSync() =>
      (super.noSuchMethod(Invocation.method(#lengthSync, []), returnValue: 0)
          as int);
  @override
  _i5.Future<DateTime> lastAccessed() =>
      (super.noSuchMethod(Invocation.method(#lastAccessed, []),
              returnValue: Future<DateTime>.value(_FakeDateTime_4()))
          as _i5.Future<DateTime>);
  @override
  DateTime lastAccessedSync() =>
      (super.noSuchMethod(Invocation.method(#lastAccessedSync, []),
          returnValue: _FakeDateTime_4()) as DateTime);
  @override
  _i5.Future<dynamic> setLastAccessed(DateTime? time) =>
      (super.noSuchMethod(Invocation.method(#setLastAccessed, [time]),
          returnValue: Future<dynamic>.value()) as _i5.Future<dynamic>);
  @override
  void setLastAccessedSync(DateTime? time) =>
      super.noSuchMethod(Invocation.method(#setLastAccessedSync, [time]),
          returnValueForMissingStub: null);
  @override
  _i5.Future<DateTime> lastModified() =>
      (super.noSuchMethod(Invocation.method(#lastModified, []),
              returnValue: Future<DateTime>.value(_FakeDateTime_4()))
          as _i5.Future<DateTime>);
  @override
  DateTime lastModifiedSync() =>
      (super.noSuchMethod(Invocation.method(#lastModifiedSync, []),
          returnValue: _FakeDateTime_4()) as DateTime);
  @override
  _i5.Future<dynamic> setLastModified(DateTime? time) =>
      (super.noSuchMethod(Invocation.method(#setLastModified, [time]),
          returnValue: Future<dynamic>.value()) as _i5.Future<dynamic>);
  @override
  void setLastModifiedSync(DateTime? time) =>
      super.noSuchMethod(Invocation.method(#setLastModifiedSync, [time]),
          returnValueForMissingStub: null);
  @override
  _i5.Future<_i3.RandomAccessFile> open(
          {_i3.FileMode? mode = _i3.FileMode.read}) =>
      (super.noSuchMethod(Invocation.method(#open, [], {#mode: mode}),
              returnValue:
                  Future<_i3.RandomAccessFile>.value(_FakeRandomAccessFile_5()))
          as _i5.Future<_i3.RandomAccessFile>);
  @override
  _i3.RandomAccessFile openSync({_i3.FileMode? mode = _i3.FileMode.read}) =>
      (super.noSuchMethod(Invocation.method(#openSync, [], {#mode: mode}),
          returnValue: _FakeRandomAccessFile_5()) as _i3.RandomAccessFile);
  @override
  _i5.Stream<List<int>> openRead([int? start, int? end]) =>
      (super.noSuchMethod(Invocation.method(#openRead, [start, end]),
          returnValue: Stream<List<int>>.empty()) as _i5.Stream<List<int>>);
  @override
  _i3.IOSink openWrite(
          {_i3.FileMode? mode = _i3.FileMode.write,
          _i8.Encoding? encoding = const _i8.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#openWrite, [], {#mode: mode, #encoding: encoding}),
          returnValue: _FakeIOSink_6()) as _i3.IOSink);
  @override
  _i5.Future<_i9.Uint8List> readAsBytes() =>
      (super.noSuchMethod(Invocation.method(#readAsBytes, []),
              returnValue: Future<_i9.Uint8List>.value(_i9.Uint8List(0)))
          as _i5.Future<_i9.Uint8List>);
  @override
  _i9.Uint8List readAsBytesSync() =>
      (super.noSuchMethod(Invocation.method(#readAsBytesSync, []),
          returnValue: _i9.Uint8List(0)) as _i9.Uint8List);
  @override
  _i5.Future<String> readAsString(
          {_i8.Encoding? encoding = const _i8.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#readAsString, [], {#encoding: encoding}),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  String readAsStringSync({_i8.Encoding? encoding = const _i8.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#readAsStringSync, [], {#encoding: encoding}),
          returnValue: '') as String);
  @override
  _i5.Future<List<String>> readAsLines(
          {_i8.Encoding? encoding = const _i8.Utf8Codec()}) =>
      (super.noSuchMethod(
              Invocation.method(#readAsLines, [], {#encoding: encoding}),
              returnValue: Future<List<String>>.value(<String>[]))
          as _i5.Future<List<String>>);
  @override
  List<String> readAsLinesSync(
          {_i8.Encoding? encoding = const _i8.Utf8Codec()}) =>
      (super.noSuchMethod(
          Invocation.method(#readAsLinesSync, [], {#encoding: encoding}),
          returnValue: <String>[]) as List<String>);
  @override
  _i5.Future<_i3.File> writeAsBytes(List<int>? bytes,
          {_i3.FileMode? mode = _i3.FileMode.write, bool? flush = false}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #writeAsBytes, [bytes], {#mode: mode, #flush: flush}),
              returnValue: Future<_i3.File>.value(_FakeFile_1()))
          as _i5.Future<_i3.File>);
  @override
  void writeAsBytesSync(List<int>? bytes,
          {_i3.FileMode? mode = _i3.FileMode.write, bool? flush = false}) =>
      super.noSuchMethod(
          Invocation.method(
              #writeAsBytesSync, [bytes], {#mode: mode, #flush: flush}),
          returnValueForMissingStub: null);
  @override
  _i5.Future<_i3.File> writeAsString(String? contents,
          {_i3.FileMode? mode = _i3.FileMode.write,
          _i8.Encoding? encoding = const _i8.Utf8Codec(),
          bool? flush = false}) =>
      (super.noSuchMethod(
              Invocation.method(#writeAsString, [contents],
                  {#mode: mode, #encoding: encoding, #flush: flush}),
              returnValue: Future<_i3.File>.value(_FakeFile_1()))
          as _i5.Future<_i3.File>);
  @override
  void writeAsStringSync(String? contents,
          {_i3.FileMode? mode = _i3.FileMode.write,
          _i8.Encoding? encoding = const _i8.Utf8Codec(),
          bool? flush = false}) =>
      super.noSuchMethod(
          Invocation.method(#writeAsStringSync, [contents],
              {#mode: mode, #encoding: encoding, #flush: flush}),
          returnValueForMissingStub: null);
  @override
  _i5.Future<bool> exists() =>
      (super.noSuchMethod(Invocation.method(#exists, []),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  bool existsSync() => (super.noSuchMethod(Invocation.method(#existsSync, []),
      returnValue: false) as bool);
  @override
  _i5.Future<String> resolveSymbolicLinks() =>
      (super.noSuchMethod(Invocation.method(#resolveSymbolicLinks, []),
          returnValue: Future<String>.value('')) as _i5.Future<String>);
  @override
  String resolveSymbolicLinksSync() =>
      (super.noSuchMethod(Invocation.method(#resolveSymbolicLinksSync, []),
          returnValue: '') as String);
  @override
  _i5.Future<_i3.FileStat> stat() =>
      (super.noSuchMethod(Invocation.method(#stat, []),
              returnValue: Future<_i3.FileStat>.value(_FakeFileStat_7()))
          as _i5.Future<_i3.FileStat>);
  @override
  _i3.FileStat statSync() =>
      (super.noSuchMethod(Invocation.method(#statSync, []),
          returnValue: _FakeFileStat_7()) as _i3.FileStat);
  @override
  _i5.Future<_i3.FileSystemEntity> delete({bool? recursive = false}) => (super
          .noSuchMethod(Invocation.method(#delete, [], {#recursive: recursive}),
              returnValue:
                  Future<_i3.FileSystemEntity>.value(_FakeFileSystemEntity_8()))
      as _i5.Future<_i3.FileSystemEntity>);
  @override
  void deleteSync({bool? recursive = false}) => super.noSuchMethod(
      Invocation.method(#deleteSync, [], {#recursive: recursive}),
      returnValueForMissingStub: null);
  @override
  _i5.Stream<_i3.FileSystemEvent> watch(
          {int? events = 15, bool? recursive = false}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #watch, [], {#events: events, #recursive: recursive}),
              returnValue: Stream<_i3.FileSystemEvent>.empty())
          as _i5.Stream<_i3.FileSystemEvent>);
}
