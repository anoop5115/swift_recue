import 'package:flutter/material.dart';

class MedicalInformationPage extends StatefulWidget {
  @override
  _MedicalInformationPageState createState() => _MedicalInformationPageState();
}

class _MedicalInformationPageState extends State<MedicalInformationPage> {
  TextEditingController _medicalHistoryController = TextEditingController();
  TextEditingController _pastSixMonthsController = TextEditingController();
  TextEditingController _lastReferredDoctorController = TextEditingController();
  TextEditingController _bloodGroupController = TextEditingController();
  TextEditingController _allergyMedicineController = TextEditingController();
  TextEditingController _ecgDetailsController = TextEditingController();

  @override
  void dispose() {
    _medicalHistoryController.dispose();
    _pastSixMonthsController.dispose();
    _lastReferredDoctorController.dispose();
    _bloodGroupController.dispose();
    _allergyMedicineController.dispose();
    _ecgDetailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Medical History',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _medicalHistoryController,
                decoration: InputDecoration(
                  hintText: 'Enter medical history',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              SizedBox(height: 20),
              Text(
                'Past Six Months History',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _pastSixMonthsController,
                decoration: InputDecoration(
                  hintText: 'Enter past six months history',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              SizedBox(height: 20),
              Text(
                'Last Referred Doctor',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _lastReferredDoctorController,
                decoration: InputDecoration(
                  hintText: 'Enter last referred doctor',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Blood Group',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _bloodGroupController,
                decoration: InputDecoration(
                  hintText: 'Enter blood group',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Allergy Medicine',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _allergyMedicineController,
                decoration: InputDecoration(
                  hintText: 'Enter allergy medicine if any',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'ECG Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _ecgDetailsController,
                decoration: InputDecoration(
                  hintText: 'Enter ECG details',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Save button pressed, you can save data here
                  // For demonstration purposes, print the values
                  print('Medical History: ${_medicalHistoryController.text}');
                  print('Past Six Months: ${_pastSixMonthsController.text}');
                  print(
                      'Last Referred Doctor: ${_lastReferredDoctorController.text}');
                  print('Blood Group: ${_bloodGroupController.text}');
                  print('Allergy Medicine: ${_allergyMedicineController.text}');
                  print('ECG Details: ${_ecgDetailsController.text}');
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
