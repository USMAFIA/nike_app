import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import '../presentation/screens/authentication/account setting/account_setup7.dart';

class AppMethods {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();
  String userId = const Uuid().v4();




  //storingpfpimage
  Future<void> storePFPImage({required XFile? image}) async {
    try {
      if (image == null) {
        if (kDebugMode) {
          print('------------------No image selected------------------');
        }
        return;
      }
      final cloudinary = CloudinaryPublic('dbnrlfylq', 'sotg4hri');
      CloudinaryResponse response = await cloudinary.uploadFile(
        CloudinaryFile.fromFile(image.path),
      );
      String imageUrl = response.secureUrl;
      if (kDebugMode) {
        print('Image uploaded successfully================> $imageUrl');
      }
      await _firestore.collection('users').doc(userId).set({
        'userId': userId,
        'profileImageUrl': imageUrl,
      });
      if (kDebugMode) {
        print(
            '-------------------------------User data added to Firestore successfully-------------------------------');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error uploading image or saving data: ${e.toString()}');
      }
    }
  }





  //signing with google
  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential =
      await _auth.signInWithCredential(credential);
      final User? user = userCredential.user;
      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'displayName': user.displayName,
          'email': user.email,
          'uid': user.uid,
          'photoURL': user.photoURL,
          'lastSignIn': Timestamp.now(),
        }, SetOptions(merge: true));
      }
      return user;
    } catch (e) {
      if (kDebugMode) {
        print('Error signing in with Google: $e');
      }
      return null;
    }
  }






  //fetching the pfp
  Future<String?> fetchProfileImage() async {
    try {
      DocumentSnapshot snapshot = await fetchSnapshot();
      if (kDebugMode) {
        print(snapshot.data().toString());
      }
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      return data['profileImageUrl'];
    } catch (e) {
      if (kDebugMode) {
        print("Error fetching profile image: $e");
      }
    }
    return null;
  }







  Future<DocumentSnapshot<Object?>> fetchSnapshot() async {
    return await _firestore.collection('users').doc(userId).get();
  }










  void requestNotificationPermissions() async {
    NotificationSettings notificationSettings =
    await _messaging.requestPermission(
      alert: true,
      carPlay: true,
      announcement: true,
      badge: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );
    if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('User granted permission');
      }
      String? token = await AppMethods().getDeviceToken();
    } else if (notificationSettings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('User granted provisional permission');
      }
    } else {
      if (kDebugMode) {
        print("User denied permission");
      }
    }
  }





  void initLocalNotifications(
      BuildContext context, RemoteMessage message) async {
    var androidInitializationSettings = const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInitializationSettings = const DarwinInitializationSettings();
    var initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings
    );
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (payload) {
      handleMessage(context, message);
        });
  }




  Future<void> showNotification(RemoteMessage message) async {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
        Random.secure().nextInt(100000).toString(),
        'High Importance Notification',
        importance: Importance.max
    );
    AndroidNotificationDetails androidNotificationDetails =
    AndroidNotificationDetails(
        channel.id,
        channel.name,
        channelDescription: 'your channel description',
        importance: Importance.high,
        priority: Priority.high,
        ticker: 'ticker'
    );
    DarwinNotificationDetails darwinNotificationDetails = const DarwinNotificationDetails(
        presentSound:true,
      presentBadge: true,
      presentAlert: true
    );
    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails,
      iOS: darwinNotificationDetails
    );

    Future.delayed(Duration.zero,(){
      _flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title.toString(),
          message.notification!.body.toString(),
          notificationDetails
      );
    });
  }





  void fireBaseInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen((message) {
      if (kDebugMode) {
        print('title=======>${message.notification!.title.toString()}');
        print('body=======>${message.notification!.body.toString()}');
        print('Data=======>${message.data.toString()}');
        print('Type=======>${message.data['type'].toString()}');
      }
      if (Platform.isAndroid) {
        AppMethods().initLocalNotifications(context, message);
        showNotification(message);
      }else{
        showNotification(message);
      }
    });
  }

  void handleMessage(BuildContext context,RemoteMessage message){
    if(message.data['type'] == 'us'){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>const AccountSetup7()));
    }
  }

  Future<void> setupInteractMessage(BuildContext context)async{

    // when app is terminated
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if(initialMessage != null){
      handleMessage(context, initialMessage);
    }else{
      if (kDebugMode) {
        print('the initial message is null-------------');
      }
    }

    //when app is in background
    FirebaseMessaging.onMessageOpenedApp.listen((event){
      handleMessage(context, event);
    });

  }


  Future<String> getDeviceToken() async {
    String? token = await _messaging.getToken();
    return token!;
  }

  void isTokenRefresh() async {
    _messaging.onTokenRefresh.listen((event) {
      event.toString();
      print('refresh');
    });
  }
  //sending notifications from one device to another device



  //getting permission to use location using geolocator
  Future<Position> getCurrentLocation()async{
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      return Future.error('Location services are disabled.');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return Future.error('Location permission are disabled.');
      }
    }
    if(permission == LocationPermission.deniedForever){
      return Future.error('Location Permission are permanently disabled, we cannot request permission');
    }
    return await Geolocator.getCurrentPosition();
  }

}