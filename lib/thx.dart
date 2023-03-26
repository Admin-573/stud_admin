import 'package:flutter/material.dart';

class thanks extends StatefulWidget {
  const thanks({Key? key}) : super(key: key);

  @override
  State<thanks> createState() => _thanksState();
}

class _thanksState extends State<thanks> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue[100],
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset("assets/images/thx.png"),
          ],
        ),
      ),
    );
  }
}
