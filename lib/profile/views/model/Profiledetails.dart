import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/src/foundation/key.dart';

class Profiledetails {
  final CollectionReference ambDetails =
      FirebaseFirestore.instance.collection('amb_details');
  //DocumentReference doc =
  //FirebaseFirestore.instance.collection('amb_details').doc('');

  //WRITEEEE
  Future<void> addDetails(
      String email, String contact, String city, String id) {
    return ambDetails
        .add({'email': email, 'phone': contact, 'city': city, 'uid': id});
  }

  Future<void> modDetails(String name, String contact, String city,
      String email, String vmodel, String vtype, String vnumber) {
    return ambDetails.add({
      'name': name,
      'email': email,
      'phone': contact,
      'city': city,
      'Vmodel': vmodel,
      'Vtype': vtype,
      'Vnumber': vnumber,
    });
  }
  Stream<QuerySnapshot> fetchAmbDetails() {
    final ambStream = ambDetails.snapshots();
    return ambStream;
  }
}

  // READDDD


