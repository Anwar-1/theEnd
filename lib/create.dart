import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'home.dart';

class create extends StatefulWidget {
  const create({super.key});

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  final auth = FirebaseAuth.instance;
  var showPass = true;
  late String email;
  late String password;
  //final emailcont =

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
        backgroundColor:  Colors.indigo[50],
        body: SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(
            height: 70,
          ),

      Container(
            padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
            margin: const EdgeInsets.all(20),
            width: 650,
            height: 550,
            decoration: BoxDecoration(color: Colors.blue[900],borderRadius: BorderRadius.circular(18)),
          child: Column(
            children: [
           /*
              TextField(
                // keyboardType:  TextInputType.number,
                // controller: mobileNumber,
                decoration: InputDecoration(
                  hintText: "user name  ",

                  hintStyle: TextStyle(color: Colors.white60),
                  // hintText: "Search product",
                  // prefixIcon: Icon(Icons.search),
                  // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                ),
              ),
                  */
              SizedBox(
                height: 20,
              ),


              TextField(
                // keyboardType:  TextInputType.,
                // controller: mobileNumber,
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                  hintText: "Email  ",

                  hintStyle: TextStyle(color: Colors.white60),
                  // hintText: "Search product",
                  // prefixIcon: Icon(Icons.search),
                  // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                ),
              ),


              SizedBox(
                height: 20,
              ),

              TextField(
                // keyboardType:  TextInputType.number,
                // controller: mobileNumber,
                onChanged: (value) {
                  password = value;
                },
                obscureText: showPass,
                decoration: InputDecoration(
                  hintText: "password ",
                  icon: Icon(Icons.password),
                  hintStyle: TextStyle(color: Colors.white60),
                  // hintText: "Search product",
                  // prefixIcon: Icon(Icons.search),
                  // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                ),
              ),
              /*
              SizedBox(
                height: 40,
              ),

              TextField(
                // keyboardType:  TextInputType.number,
                // controller: mobileNumber,
                decoration: InputDecoration(
                  hintText: " confirm password ",

                  hintStyle: TextStyle(color: Colors.white60),
                  // hintText: "Search product",
                  // prefixIcon: Icon(Icons.search),
                  // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                ),
              ),

              SizedBox(
                height: 30,
              ),
   */
/*
              TextField(
                 keyboardType:  TextInputType.number,
                // controller: mobileNumber,
                decoration: InputDecoration(
                  hintText: "phone number  ",

                  hintStyle: TextStyle(color: Colors.white60),
                  // hintText: "Search product",
                  // prefixIcon: Icon(Icons.search),
                  // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                ),
              ),
*/
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () async{
             // var user =  await auth.createUserWithEmailAndPassword(email: email, password: password);
                  try{
                    var user =  await auth.createUserWithEmailAndPassword(email: email, password: password);
                    Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context) =>  home()),
                       );

                  } catch(e) {
                    print(e);
                  }
                  // print(email);
                  // print(password);
                  // Navigator.push(
                  //  context,
                  //  MaterialPageRoute(builder: (context) =>  create()),
                  // );
                },


                height: 50,
                minWidth: 400,
                child: Text('create Account',style: TextStyle(
                    fontSize: 18
                ),),
                textColor: Colors.white,
                color: Colors.orange[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),

            ],
          )





      ),
      ]
    ),
        ),
    );
  }
}
