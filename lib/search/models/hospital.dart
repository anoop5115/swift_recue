class hosp {
  String? city;
  String? name;
  int? contact;
  bool? color;

  hosp({this.city, this.name, this.contact, this.color});

  // List of hospital objects
}

List<hosp> hosp_list = [
  hosp(
      city: "New York", name: "NYC Hospital", contact: 1234567890, color: true),
  hosp(
      city: "Los Angeles",
      name: "LA Medical Center",
      contact: 9876543210,
      color: false),
  hosp(
      city: "Chicago",
      name: "Windy City Clinic",
      contact: 2468109753,
      color: true),
  hosp(
      city: "Houston",
      name: "Houston General",
      contact: 1357924680,
      color: false),
  hosp(
      city: "Miami",
      name: "Miami Health Center",
      contact: 3692581470,
      color: false),
  hosp(
      city: "San Francisco",
      name: "SF Medical Institute",
      contact: 9870123456,
      color: false),
  hosp(
      city: "Dallas",
      name: "Dallas Medical Clinic",
      contact: 4567890123,
      color: false),
  hosp(
      city: "Atlanta",
      name: "Atlanta Regional Hospital",
      contact: 6543210987,
      color: false),
  hosp(
      city: "Seattle",
      name: "Seattle Community Clinic",
      contact: 7890123456,
      color: true),
];
