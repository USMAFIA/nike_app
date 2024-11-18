// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// class AuthRepo{
//   CollectionReference users = FirebaseFirestore.instance.collection('users');
//   Future signInWithGoogle() async{
//     print('Sign in With Google ================>');
//     final GoogleSignInAccount?  googleUser = await GoogleSignIn().signIn();
//     if(googleUser != null){
//       print('Google Sign In Account ================>');
//       final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//       print('Google Sign In Authentication ================>');
//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//       print('Credential ================>');
//       UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
//       User? user = userCredential.user;
//       if(user != null){
//         print('User ID ============> ${user.uid}');
//         print('User Email ============> ${user.email}');
//         print('User Name ============> ${user.displayName}');
//         print('User Photo ============> ${user.photoURL}');
//         print('User Number ============> ${user.phoneNumber}');
//       }
//     }
//     return null;
//   }
// }
