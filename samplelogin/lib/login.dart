import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 140),
              child: Text(
                "Welcome \nBack",
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Sign In ",
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontSize: 27,
                              fontWeight: FontWeight.bold)),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: const Color(0xff4c505b),
                        child: IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.arrow_forward),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'register');
                          },
                          child: Text('Sign Up',
                              style: TextStyle(
                                  color: Color(0xff4c505b),
                                  decoration: TextDecoration.underline,
                                  fontSize: 18))),
                      TextButton(
                          onPressed: () {},
                          child: Text('Forgot Password',
                              style: TextStyle(
                                  color: Color(0xff4c505b),
                                  decoration: TextDecoration.underline,
                                  fontSize: 18)))
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
