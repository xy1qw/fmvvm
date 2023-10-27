import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/src/builder/build_step.dart';
import 'package:source_gen/source_gen.dart';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

class FmvvmGenerator<T> extends GeneratorForAnnotation<T> {
  @override
  FutureOr<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is ClassElement) {
      final Class classBuilder = Class(
        (builder) => builder
          ..name = "_\$${element.displayName}"
          ..abstract = true,
      );

      return DartFormatter()
          .format(classBuilder.accept(DartEmitter()).toString());
    }

    throw Exception();
  }
}
