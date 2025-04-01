import 'package:flutter/material.dart';
import 'package:mobile_tp02/loginScreen.dart';

class Registerscreen extends StatefulWidget {
  @override
  _Registerscreen createState() => _Registerscreen();
}

class _Registerscreen extends State<Registerscreen> {
  bool _obscurePassword = true;
  bool _obscureCheckBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Register new account",
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

            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color.fromARGB(255, 243, 241, 241),
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: _obscurePassword,

              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color.fromARGB(255, 243, 241, 241),
                filled: true,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: _obscurePassword,

              decoration: InputDecoration(
                labelText: "Password Confirmation",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color.fromARGB(255, 243, 241, 241),
                filled: true,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: _obscureCheckBox,
                  onChanged: (value) {
                    setState(() {
                      _obscureCheckBox = value!;
                    });
                  },

                  // side: const BorderSide(color: Colors.red, width: 2),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('By creating an account , you agree to our '),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Register', style: TextStyle(fontSize: 20)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // Set border radius for button
                ),
              ),
            ),

            SizedBox(height: 40),
            Row(
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 106, 105, 105),
                  ),
                ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
