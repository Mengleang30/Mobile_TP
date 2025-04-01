import 'package:flutter/material.dart';
import 'package:mobile_tp02/loginScreen.dart';

class Afterlogin extends StatefulWidget {
  
  @override
  _afterloginState createState() => _afterloginState();
}

class _afterloginState extends State<Afterlogin> {

  void _logout() {
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => LoginScreen()),
    );
    return;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "Welcome to the app!",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 40),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Divider(color: Colors.blue, thickness: 4),
                ),
                SizedBox(width: 5),
                SizedBox(
                  width: 10,
                  child: Divider(color: Colors.blue, thickness: 4),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                _logout();
              },
              child: Text('Login', style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // Set border radius for button
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
