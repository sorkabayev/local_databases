import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_databases/pages/sign_up_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  static const String id = "log_in_page";

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController userNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade800,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("asset/image/jav.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Sign in to continue",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 150,
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
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(color: Colors.white24),
                )),
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
                      Navigator.pushReplacementNamed(context, SignUpPage.id);
                    },
                    child: const Text(
                      "SIGN UP ",
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
