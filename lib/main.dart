import 'package:flutter/material.dart';

import 'screentwo.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //
    ),
  );
}

class MyScreen extends StatelessWidget {
  MyScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
        backgroundColor: Colors.teal,
      ),
      //
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'REGISTER',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              'Create an account to access all the feature of Maxpense',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Please Enter Email',
                  labelText: 'Email Address',
                  // labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.email_sharp),
                  // fillColor: Colors.grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Please Enter Your Name',
                  labelText: 'Your Name',
                  // labelStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.person),
                  // fillColor: Colors.grey,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black87),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
              ),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Please Enter Password",
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text('Register'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
