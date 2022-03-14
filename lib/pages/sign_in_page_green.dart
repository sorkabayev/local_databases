import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_databases/pages/sign_up_page.dart';

class SignInPageGreen extends StatefulWidget {
  const SignInPageGreen({Key? key}) : super(key: key);

  static const String id = "sign_in_page_green";

  @override
  _SignInPageGreenState createState() => _SignInPageGreenState();
}

class _SignInPageGreenState extends State<SignInPageGreen> {
  TextEditingController emailNamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 60,
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("asset/image/jav.jpg"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(45),topLeft: Radius.circular(45))
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                        child: Text("Email",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),)),
                    TextField(
                      controller: emailNamecontroller,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            )),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          CupertinoIcons.person_alt,
                          color: Colors.grey,
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
                              color: Colors.grey,
                            )),
                        hintText: "Enter Password",
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          CupertinoIcons.padlock_solid,
                          color: Colors.grey,
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
                          style: TextStyle(color: Colors.grey),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            shape: BoxShape.rectangle,color: Colors.blueGrey),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Sign In",style: TextStyle(color: Colors.white,fontSize: 20),
                          ),
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Container(
                          width: 150,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Text("OR",style: TextStyle(color: Colors.grey,fontSize: 20),),
                        Container(
                          width: 150,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 25,
                          width: 25,
                         child: Text("f",style: TextStyle(color: Colors.indigo,fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("asset/image/twitter.png")
                            )
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("asset/image/instagram.png")
                            )
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dont have an accaunt ? ",
                          style: TextStyle(color: Colors.grey),
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
            ),
          ],
        ),
      ),
    );
  }
}