import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(
              image: AssetImage('images/facebook_logo.png'),
              width: 200,
              height: 200,
            ),
            Container(
              width: size.width * 0.55,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login into Facebook',
                    style: TextStyle(fontSize: 16),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email address or phone',
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                      side: BorderSide.none,
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Forgotten account?',
                          style:
                              TextStyle(fontSize: 12, color: Colors.blueAccent),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Sign up for facebook',
                          style:
                              TextStyle(fontSize: 12, color: Colors.blueAccent),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
