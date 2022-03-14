import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_databases/pages/log_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String id = "sign_up_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonenumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade800,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            const Center(
              child: Text(
                " Create\nAccaunt",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            TextField(
              controller: userNamecontroller,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white60,
                )),
                hintText: "User Name",
                hintStyle: TextStyle(color: Colors.white60),
                prefixIcon: Icon(
                  CupertinoIcons.person_alt,
                  color: Colors.white60,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white60,
                )),
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.white60),
                prefixIcon: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white60,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: phonenumbercontroller,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white60,
                )),
                hintText: "User Name",
                hintStyle: TextStyle(color: Colors.white60),
                prefixIcon: Icon(
                  CupertinoIcons.phone,
                  color: Colors.white60,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: passwordcontroller,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.white60,
                )),
                hintText: "Password",
                hintStyle: TextStyle(color: Colors.white60),
                prefixIcon: Icon(
                  CupertinoIcons.padlock_solid,
                  color: Colors.white60,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blueAccent),
                child: MaterialButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                )),
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont have an accaunt ? ",
                  style: TextStyle(color: Colors.white24),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, LogInPage.id);
                    },
                    child: const Text(
                      "SIGN IN ",
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
