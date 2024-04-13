class hosp {
  String? city;
  String? name;
  int? contact;
  bool? color;

  hosp({this.city, this.name, this.contact, this.color});

  // List of hospital objects
  List<hosp> hosplist = [
    hosp(
        city: "kollam",
        name: "anoop",
        contact: 9746195665,
        color: true), // Using named arguments
  ];
}
