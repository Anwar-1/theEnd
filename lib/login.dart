import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pojectfinal/create.dart';
import 'package:pojectfinal/home.dart';



class login extends StatefulWidget {
  const  login({super.key});


  // TextEditingController mobileNumber = TextEditingController();

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _emailcont = TextEditingController();
  final _passcont = TextEditingController();
  var showPass1 = true;

  Future sigin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailcont.text.trim(),
        password: _passcont.text.trim());

  }

  @override
  void dispose(){
    super.dispose();
    _emailcont.dispose();
    _passcont.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.indigo[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),


            Container(
              padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
              margin: const EdgeInsets.all(20),
              width: 650,
              height: 550,
              decoration: BoxDecoration(color: Colors.blue[900],borderRadius: BorderRadius.circular(18)),
              child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 40),),
                  SizedBox(height: 8,),
                  Text("Access to purchased ticket ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 15),),

                  SizedBox(
                    height: 20,
                  ),


                  TextField(
                    // keyboardType:  TextInputType.number,
                    // controller: mobileNumber,
                    onChanged: (value) {},
                    controller: _emailcont,
                    decoration: InputDecoration(
                      hintText: "Email ",

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
                    onChanged: (value) {},
                    controller: _passcont,
                    obscureText: showPass1,
                    decoration: InputDecoration(
                      hintText: "password ",

                      hintStyle: TextStyle(color: Colors.white60),
                      // hintText: "Search product",
                      // prefixIcon: Icon(Icons.search),
                      // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),


                GestureDetector(
                  onTap: sigin,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.orange[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text('Continue',style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                  ),
                  ),
                ),
                  /*
                    MaterialButton(

                      onPressed: (){

                        sigin;
                       // Navigator.push(
                        //  context,
                        //  MaterialPageRoute(builder: (context) =>  home()),
                       // );
                      },


                      height: 50,
                      minWidth: 400,
                      child: Text('Continue',style: TextStyle(
                          fontSize: 18
                      ),),
                      textColor: Colors.white,
                      color: Colors.orange[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),

                   */
                    SizedBox(
                      height: 40,
                    ),

                    MaterialButton(
                      onPressed: (){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  create()),
                        );
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

             ]
              ),
            ),
            //Container(
            // height: 200,
            //  width: double.infinity,
            //  margin: const EdgeInsets.all(20),
            //  color: Colors.blue[900],
            //  decoration: BoxDecoration(
            //  border: Border.all(width: 5),
            //  borderRadius: BorderRadius.all(Radius.circular(50)),


          ],
        ),
      ),
    );
  }
}
