import 'package:get/state_manager.dart';
import 'package:moviedb_org/pages/library/library.dart';
import 'package:moviedb_org/pages/explore.dart';

class MyHomePageController extends GetxController {
  int selectedIndex = 0;
  List pageList = [ExplorePage(), LibraryPage()];

  void changeIndex(int index) {
    selectedIndex = index;
    update();
  }
}
