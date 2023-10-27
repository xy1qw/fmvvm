import 'package:build/build.dart';
import 'package:fmvvm_generator/src/model_generator.dart';
import 'package:fmvvm_generator/src/view_model_generator.dart';
import 'package:source_gen/source_gen.dart';

Builder fmvvm(BuilderOptions options) {
  return SharedPartBuilder([ModelGenerator(), ViewModelGenerator()], 'fmvvm');
}
