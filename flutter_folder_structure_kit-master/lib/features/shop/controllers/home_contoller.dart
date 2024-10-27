import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  // Define a reactive variable for the carousel index
  final RxInt carouselCurrentIndex = 0.obs;

  // Method to update the page indicator
  void updatePageIndicator(int index) {
    carouselCurrentIndex.value = index; // Update the reactive variable
  }
}
