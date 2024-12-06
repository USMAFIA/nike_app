import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nike_app/presentation/screens/home/main_page.dart';

import '../../logic/services.dart';


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
                Navigator.of(context).pop();
              },
              child: const Text("Cancel", style: TextStyle(color: Colors.red)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: TextButton(
                onPressed: () async {
                  User? user = await AppMethods().signInWithGoogle();
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
