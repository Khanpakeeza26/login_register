import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome'),
          // automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // InkWell(
            //   onTap: () {
            //   Navigator.pop(context);
            // },
            // child: Icon(Icons.arrow_back),
            // ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 18,
                right: 18,
              ),
            ),

            const Text(
              'LOG-IN',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 25,
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
            ),

            const Text(
              'Login now to track all your expenses '
              'and income at a  place.',
              softWrap: true,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
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
                      Radius.circular(10),
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
                  child: Text('Login'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
