import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pas_flutter_11_s1/routes.dart';
import 'package:pas_flutter_11_s1/models/loginModel.dart';

class LoginController extends GetxController{
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  var loginModel = Rxn<LoginModel>();

  // Method hit API
  void login() async{
    print("hello bruv");
    if(txtUsername.text.toString().isEmpty || txtUsername.text.toString().isEmpty){
      Get.snackbar("error", "username dan password harus terisi");
    }else {
      try {
        isLoading.value = true; // tanda loading
        print("world");
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username" : txtUsername.text.toString(),
          "password" : txtPassword.text.toString()
        });

        isLoading.value = false;
        if(response.statusCode == 200){

          // ambil json message ke main menu
          loginModel.value = loginModelFromJson(response.body);
          if(loginModel.value?.status == true){
            Get.snackbar("berhasil", "Login berhasil");
            Get.offNamed(Routes.main_menu);
          }else {
            Get.snackbar("gagal", loginModel.value?.message ?? "Login gagal");
          }
        } else {
          Get.snackbar("gagal", "cek internet connection");
        }

      } catch (e){
        Get.snackbar("gagal", e.toString());
      }
    }
  }
}