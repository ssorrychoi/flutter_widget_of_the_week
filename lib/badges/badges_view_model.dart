import 'package:get/get.dart';

class BadgesViewModel extends GetxController {
  final _snowCount = 0.obs;

  get snowCount => _snowCount.value;

  void addSnowCount() {
    _snowCount.value++;
  }
}
