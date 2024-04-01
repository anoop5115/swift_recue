import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("search hospitals"), Icon(Icons.search)],
              ),
            ),
          ),
          Center(
            child: Stack(children: [
              Center(
                child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 86, 75, 74),
                    )),
              ),
              Center(
                child: Container(
                    child: Center(
                      child: Text(
                        "SOS",
                        style: TextStyle(fontSize: 70),
                      ),
                    ),
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    )),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
