import 'package:flutter/material.dart';

import '../../../../internal/helpers/error_helper.dart';

class ErrorScreen extends StatelessWidget {
  final ErrorsEnum error;
  ErrorScreen({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              getErrors(error),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 100,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.replay,
                size: 50,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
