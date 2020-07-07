import 'package:flutter/material.dart';
import 'package:memenator/services/meme.dart';
import 'package:memenator/widgets/rotate-image.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {
  String status = "Loading...";

  void loadTemplates() async {
    Map result = await Meme.getMemes();
    try {

    }
    catch(err) {

    }
  }

  @override
  void initState() {
    super.initState();

    loadTemplates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 104,),
            RotateImage(
              child: Image.asset(
                "assets/awesome.png",
                width: 200,
              ),
              duration: Duration(seconds: 2),
            ),
            SizedBox(height: 32,),
            Text(
              status,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),
            ),
            SizedBox(height: 72,),
            Text(
              "MEMENATOR",
              style: TextStyle(
                fontFamily: "Impact",
                fontSize: 48,
                color: Colors.white
              ),
            )
          ],
        )
      ),
    );
  }
}
