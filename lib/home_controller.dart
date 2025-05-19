import 'package:get/get.dart';

class HomeController extends GetxController {
  // int counter = 0;
  var counter = 0.obs;

  void incrementCounter() {
    counter++;
    // update();

  
  }

  void decrementCounter() {
    counter--;
      // update();
    }
}
