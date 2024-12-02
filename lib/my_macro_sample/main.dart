import 'package:macro_sample/my_macro_sample/sample.dart';

void main() {
  final sample = Sample();

  sample.hello();
  print(sample.count.toString());
  sample.countUp();
  print(sample.count.toString());
}
