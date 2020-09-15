import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{
  FirebaseAuth auth = FirebaseAuth.instance;
  Rx<User> _user = Rx<User>();
  String get user => _user.value?.displayName;

  @override
  void onInit(){
    _user.bindStream(auth.authStateChanges());
  }

  void signUp(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("Error: ", e.message, snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("Error: ", e.message, snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      Get.snackbar("Error: ", e.message, snackPosition: SnackPosition.BOTTOM);
    }
  }
}