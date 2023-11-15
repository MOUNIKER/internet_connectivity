import 'package:flutter/material.dart';

class InternetNotAvailable extends StatelessWidget {
  const InternetNotAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      curve: Curves.easeInOutCubic,
      duration: const Duration(milliseconds: 500),
      child: Container(
        height: 33,
        color: Colors.red,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "OFFLINE",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 8.0,
            ),
            SizedBox(
              width: 12.0,
              height: 12.0,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InternetAvailable extends StatelessWidget {
  const InternetAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1,
      curve: Curves.easeInOutCubic,
      duration: const Duration(milliseconds: 500),
      child: Container(
        height: 33,
        color: Colors.green,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "ONLINE",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
