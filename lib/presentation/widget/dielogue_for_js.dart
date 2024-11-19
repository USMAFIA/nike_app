import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nike_app/presentation/screens/home/main_page.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn();
final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<User?> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return null; // User canceled the sign-in

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final UserCredential userCredential = await _auth.signInWithCredential(credential);
    final User? user = userCredential.user;

    // Store user details in Firestore
    if (user != null) {
      await _firestore.collection('users').doc(user.uid).set({
        'displayName': user.displayName,
        'email': user.email,
        'uid': user.uid,
        'photoURL': user.photoURL,
        'lastSignIn': Timestamp.now(),
      }, SetOptions(merge: true)); // Merges data if user already exists
    }

    return user;
  } catch (e) {
    print('Error signing in with Google: $e');
    return null;
  }
}

void showSignInDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text(
        "\"Nike\" Wants to Use \"nike.com\" to Sign In",
        textAlign: TextAlign.center,
      ),
      content: const Text(
        "This allows the app and website to share information about you.",
        textAlign: TextAlign.center,
      ),
      actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("Cancel", style: TextStyle(color: Colors.red)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: TextButton(
                onPressed: () async { // Handle sign-in and data storage
                  User? user = await signInWithGoogle(); // Sign in
                  if (user != null) {
                    print("Signed in as: ${user.displayName}");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                  } else {
                    print("Sign-in failed");
                    Navigator.of(context).pop();
                  }
                },
                child: const Text("Continue", style: TextStyle(color: Colors.blue)),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
