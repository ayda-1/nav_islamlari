import 'package:flutter/material.dart';
import 'package:nav_islamlari/yellow_page.dart';

class RedPage extends StatefulWidget {
  const RedPage({super.key});

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  late String name;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = "ayda";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Page"),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Red Page", style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 20),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              child: Text("Sarı sayfaya git"),
              onPressed: () {
                Navigator.of(context).pushNamed("/yellowPage");
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(),
              ),
              child: Text("Yeşil sayfaya git"),
              onPressed: () {
                Navigator.of(context).pushNamed("/greenPage", arguments: name);
              },
            ),
          ],
        ),
      ),
    );
  }
}
