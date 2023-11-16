import 'package:get/get.dart';
import 'package:jiitaktestui/view-model/homePageListData.dart';

class Controller extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxBool isLiked = false.obs;
  List<RxBool> likedStatuses = List.generate(immages.length, (index) => false.obs);
  RxInt currentIndex = 0.obs;
  Rx dropdownvalue1 = "17:00".obs;
  Rx dropdownvalue2 = "20:00".obs;
  Rx dropdownvalue3 = "11:00".obs;
  Rx dropdownvalue4 = "15:00".obs;
  Rx dropdownvalue5 = "料理カテゴリー選択".obs;
  RxBool isChecked1 = false.obs;
  RxBool isChecked2 = false.obs;
  RxBool isChecked3 = false.obs;
  RxBool isChecked4 = false.obs;
  RxBool isChecked5 = false.obs;
  RxBool isChecked6 = true.obs;
  RxBool isChecked7 = true.obs;
  RxBool isChecked8 = true.obs;
  RxBool isChecked9 = true.obs;
  RxBool isChecked10 = false.obs;
  RxBool isChecked11 = true.obs;
  RxBool isChecked12 = false.obs;
  RxBool isChecked13 = true.obs;
  RxBool isChecked14 = false.obs;
}
