import 'package:get/get.dart';
import '../../features/navigation/controller/nav_controller.dart';

void initGetXDependencies() {
  Get.lazyPut(() => NavigationController(), fenix: true);
}