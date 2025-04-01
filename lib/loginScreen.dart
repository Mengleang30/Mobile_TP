import 'package:flutter/material.dart';
import 'package:mobile_tp02/afterLogin.dart';
import 'package:mobile_tp02/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class User {
  String email;
  String password;

  User({required this.email, required this.password});
}

class _LoginScreenState extends State<LoginScreen> {
  final List<User> users = [
    User(email: "example@.com", password: '123'),
    User(email: "example1@.com", password: '123'),
  ];

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _message = '';

  bool _obscurePassword = true;
  bool _obscureCheckBox = true;

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    for (var user in users) {
      if (user.email == email && user.password == password) {
        setState(() {
          _message = 'Login successful!';
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Afterlogin()),
        );
        return;
      }
    }

    setState(() {
      _message = 'Invalid email or password.';
    });
  }

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
              "Login to your account",
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
              controller: _emailController,
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
              controller: _passwordController,
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

                Text("Remember me"),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _login();
              },
              child: Text('Login', style: TextStyle(fontSize: 20)),
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
            Text(_message, style: TextStyle(color: Colors.red, fontSize: 16)),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Or",
                style: TextStyle(color: Colors.blueGrey, fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login With Google', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                foregroundColor: const Color.fromARGB(255, 81, 81, 81),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // Set border radius for button
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 106, 105, 105),
                  ),
                ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registerscreen()),
                    );
                  },
                  child: Text(
                    "Register",
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
