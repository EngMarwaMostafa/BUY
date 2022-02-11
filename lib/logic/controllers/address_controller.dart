import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AddressController extends GetxController{
  var phoneNumber = ''.obs;
  var address = ''.obs;
  var district = ''.obs;
  var city = ''.obs;
  var street = ''.obs;
  final box = GetStorage().obs;
}