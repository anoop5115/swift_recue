import 'package:flutter/material.dart';

class MedicalInfo {
  String name;
  int uid;
  final age;
  var weight;
  final blood;
  List<String> chronic;
  List<Treat_Hist> history;
  MedicalInfo(
      {required this.name,
      required this.uid,
      required this.age,
      required this.weight,
      required this.blood,
      required this.chronic,
      required this.history});
}

class Treat_Hist {
  String topic;
  String symptoms;
  String conclusion;
  List<String> medicines;
  final AssetImage image;
  String description;
  String date;
  String doctorname;
  Treat_Hist(
      {required this.description,
      required this.date,
      required this.doctorname,
      required this.topic,
      required this.symptoms,
      required this.conclusion,
      required this.medicines,
      required this.image});
}

List<MedicalInfo> MedicalInfoList = [
  MedicalInfo(
    name: "John Doe",
    uid: 123456,
    age: 35,
    weight: 75.5,
    blood: "O+",
    chronic: ["Diabetes", "Hypertension"],
    history: [
      Treat_Hist(
        description: "Regular checkup",
        date: "2023-04-05",
        doctorname: "Dr. Smith",
        topic: "General Health",
        symptoms: "None",
        conclusion: "Healthy",
        medicines: ["None"],
        image: AssetImage("assets/image1.jpg"),
      ),
      Treat_Hist(
        description: "Flu",
        date: "2022-12-15",
        doctorname: "Dr. Johnson",
        topic: "Flu Treatment",
        symptoms: "Fever, cough",
        conclusion: "Recovered",
        medicines: ["Paracetamol", "Cough Syrup"],
        image: AssetImage("assets/image2.jpg"),
      ),
    ],
  ),
  MedicalInfo(
    name: "Jane Smith",
    uid: 654321,
    age: 42,
    weight: 68.2,
    blood: "A-",
    chronic: [
      "Asthma",
    ],
    history: [
      Treat_Hist(
        description: "Asthma Checkup",
        date: "2023-01-10",
        doctorname: "Dr. Williams",
        topic: "Asthma Management",
        symptoms: "Wheezing, Shortness of breath",
        conclusion: "Under Control",
        medicines: ["Inhaler"],
        image: AssetImage("assets/image3.jpg"),
      ),
    ],
  ),
  MedicalInfo(
    name: "David Johnson",
    uid: 987654,
    age: 50,
    weight: 80.0,
    blood: "B+",
    chronic: [],
    history: [
      Treat_Hist(
        description: "Annual Physical",
        date: "2023-07-20",
        doctorname: "Dr. Anderson",
        topic: "Overall Health Checkup",
        symptoms: "None",
        conclusion: "Healthy",
        medicines: ["None"],
        image: AssetImage("assets/image4.jpg"),
      ),
    ],
  ),
];

// Now you can use dummyMedicalInfoList to access the list of dummy data.

