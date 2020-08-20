import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {

  String id;
  String name;
  String email;
  String urlimage;

  User({ this.id, this.name, this.email, this.urlimage});

  User.fromSnapshot(FirebaseUser currentUser) : 
    id = currentUser.uid,
    name = currentUser.displayName,
    email = currentUser.email,
    urlimage = currentUser.photoUrl;

  Map<String, dynamic> toJson(){
    return {
      "id": id,
      "name": name,
      "email": email,
      "urlimage": urlimage,
    };
  }
}