
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
class JobreqRepo {
  final _auth = FirebaseAuth.instance;
    final CollectionReference taskRef =
        FirebaseFirestore.instance.collection('taskcollection');
  Future<void> addTask(String jobtitle, 
  String qualification, 
  String jobtype,
  String joblocation,
  String monthlysalary,
  String hiringprocess,
  String jobdescription,
      BuildContext context) async {
    final uuid = Uuid();
    final tid = uuid.v4();
    
    try {
      // for (final element in images) {
      //   final reference = FirebaseStorage.instance
      //       .ref()
      //       .child('taskimage')
      //       .child(element.name);
      //   final file = File(element.path);
      //   await reference.putFile(file);
      //   final taskImages = await reference.getDownloadURL();
      //   taskImage.add(taskImages);
      // }
      await taskRef.doc(tid).set({
        'userid': _auth.currentUser!.uid,
        'job title': jobtitle,
        'qualification': qualification,
        'jobtype': jobtype,
        'joblocation':joblocation,
        'monthly salary':monthlysalary,
        'hiring process':hiringprocess,
        'jobdescription':jobdescription,
        'taskid': tid,
        // 'taskImage': taskImage,
      });
    } on FirebaseException catch (e) {
      var statusCode = e.code.toString();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(statusCode)));
    }
  }
}

// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:uuid/uuid.dart';

// class ProductRepo {
//   final _auth = FirebaseAuth.instance;
//   final CollectionReference productRef =
//       FirebaseFirestore.instance.collection('Product Collection');
//   Future<void> addProduct(String proname, String category, String pronumber,
//       String stock, String price, List<XFile> images) async {
//     final uuid = Uuid();
//     final imgid = uuid.v4();
//     List<String>? productImages = [];
//     try {
//       for (final element in images) {
//         final refference = FirebaseStorage.instance
//             .ref()
//             .child('Products_images')
//             .child(element.name);
//         final file = File(element.path);
//         await refference.putFile(file);
//         final productImage = await refference.getDownloadURL();
//         productImages.add(productImage);
//       }
//       await productRef.doc(imgid).set({
//         'product name': proname,
//         'category': category,
//         'product number': pronumber,
//         'stock list': stock,
//         'price': price,
//         'product image': productImages,
//         'userid': _auth.currentUser!.uid,
//       });
//     } catch (e) {
//       throw Exception('Something went wrong,Try again');
//     }
//   }
// }