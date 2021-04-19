import 'package:flutter/material.dart';
import 'package:kurs_2021_app_woche2/screens/sven_n_screen.dart';

class KursScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kursteilnehmer"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          zeileKursteilnehmer("Malte", context, SvenNScreen()),
          zeileKursteilnehmer("Matze", context, SvenNScreen()),
          zeileKursteilnehmer("Sven", context, SvenNScreen()),
        ],
      ),
    );
  }

  Widget zeileKursteilnehmer(String name, BuildContext context, Widget screen) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print("ouch");
          Navigator.of(context).push(
            (MaterialPageRoute(builder: (context) => screen))
          );
        },
        child: Container(
          width: 200,
          color: Colors.green,
          child: Text(name,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
