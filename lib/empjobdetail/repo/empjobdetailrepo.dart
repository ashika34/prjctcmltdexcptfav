import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class JobRepo {
  Future<void> addJob(
  String jobTitle, 
  String qualification, 
  String jobType,
  String jobLocation,
  String monthlySalary,
  String hiringProcess,
  String jobDescription,
BuildContext context) async {
    final uuid = Uuid();
    final jid = uuid.v4();
    final _auth = FirebaseAuth.instance;
    final CollectionReference _jobRef =
        FirebaseFirestore.instance.collection('jobcollection');
    try {
     await _jobRef.doc(jid).set({
        'userid': _auth.currentUser!.uid,
        'job title': jobTitle,
        'qualification': qualification,
        'jobtype': jobType,
        'joblocation':jobLocation,
        'monthly salary':monthlySalary,
        'hiring process':hiringProcess,
        'jobdescription':jobDescription,
        'jobid': jid,
        });
    } on FirebaseException catch (e) {
      var statusCode = e.code.toString();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(statusCode)));
    }
  }
}

