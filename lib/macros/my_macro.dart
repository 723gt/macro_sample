import 'dart:async';
import 'package:macros/macros.dart';

macro class MyMacro implements ClassDeclarationsMacro {
  const MyMacro();

  @override
  FutureOr<void> buildDeclarationsForClass(
      ClassDeclaration clazz, MemberDeclarationBuilder builder) async {
    final fields = await builder.fieldsOf(clazz);
    final count = fields.where((e) => e.identifier.name ==  'count').firstOrNull;
    
    if (count == null){
      return;
    }
    builder.declareInType(
        DeclarationCode.fromParts([' void hello () { print("hello"); }']));
    builder.declareInType(
        DeclarationCode.fromParts([' void countUp () {count += 1; }']));
  }
}

// dart --enable-experiment=macros run ./lib/my_macro_sample/main.dart 
// hello
// 0
// 1