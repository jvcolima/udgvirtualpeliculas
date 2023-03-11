import 'package:get/get.dart';
import 'package:urban/utills/Api_Client.dart';
import 'package:urban/utills/URL.dart';

class SignInController extends GetxController {
  List<String> countryCode = [
    "+91",
    "+23",
  ].obs;
  var selectedValue = "+91".obs;

  //SignInController({required this.countryCode, required this.selectedValue});

  void setSelected(String value) {
    selectedValue.value = value;
  }

  Future<void> setSelected2(String value) async {
    Map<String, dynamic> response =
        await Api_Client.SimpleRequest(url: URL.Settings);
    try {
      if (response.containsKey('200') &&
          response['message'] == 'successfully') {
        var resp = response;
      } else if (response.containsKey('error')) {
        //  ErrorMessage(context, message: response[AppConstant.Error]);
      }
    } catch (e) {
      //ErrorMessage(context, message: response[AppConstant.Error]);
    }
  }

  Future<void> loginEFIZIO() async {
    Map<String, dynamic> response =
        await Api_Client.SimpleRequest(url: URL.Settings);
    try {
      if (response.containsKey('200') &&
          response['message'] == 'successfully') {
        var resp = response;
      } else if (response.containsKey('error')) {
        //  ErrorMessage(context, message: response[AppConstant.Error]);
      }
    } catch (e) {
      //ErrorMessage(context, message: response[AppConstant.Error]);
    }
  }
}
