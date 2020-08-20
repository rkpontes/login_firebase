import 'package:login_firebase/app/data/model/user_model.dart';
import 'package:login_firebase/app/data/provider/login_provider.dart';

class LoginRepository {
  
  final LoginApiClient apiClient = LoginApiClient();

  Future<User> createUserWithEmailAndPassword(String email, String password, String name){
    return apiClient.createUserWithEmailAndPassword(email, password, name);
  }

  Future<User> signInWithEmailAndPassword(String email, String password){
    return apiClient.signInWithEmailAndPassword(email, password);
  }

  signOut(){
    apiClient.signOut();
  }

}
