import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 40,
          vertical: 4,
        ),
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 40,
        //   vertical: 8,
        // ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/heart.png',
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 237, 84, 84),
            ),
            const TextField(
              maxLength: 20,
              decoration: InputDecoration(
                hintText: 'someone@email.com',
                label: Text('Email/Phone'),
              ),
            ),
            // const SizedBox(
            //   height: 4,
            // ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Password'),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Log In'),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
