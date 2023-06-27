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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(223, 255, 181, 181),
              Color.fromARGB(222, 255, 200, 200),
            ],
          ),
        ),
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 50,
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
              'assets/images/blood.png',
              width: 240,
              height: 200,
              // color: const Color.fromARGB(192, 237, 84, 84),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'someone@email.com',
                label: const Text('Email/Phone'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.secondary,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                label: const Text('Password'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
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
