import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body:LoginPage()));
  }
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left:20),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to",
                style: TextStyle(
                    letterSpacing: 1.1,
                    fontSize: 25,
                    color: const Color(0xff491984),
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height:10),
              Text(
                "Chat App",
                style: GoogleFonts.anton(
                    letterSpacing: 1.5,
                    fontSize: 30,
                    color: const Color(0xff491984),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Enter the following details",
                style: TextStyle(fontSize: 20, color: const Color(0xffBFBFBF)),
              ),
              Text(
                "and get connected",
                style: TextStyle(fontSize: 20, color: const Color(0xffBFBFBF)),
              ),
              Container(
                margin: EdgeInsets.only(top: 50, left: 50),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: Image.asset("images/profil.png").image)),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      right: -10,
                      bottom: -10,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: Icon(
                            Icons.camera_alt,
                            size: 40,
                            color: Colors.blueAccent,
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              FormLogin(),
              Center(
                              child: Container(
                                margin: EdgeInsets.only(top:30),
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff3CE261),
                  ),
                  child: Text("Join",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                       
                ),
              )
            ],
          ),
        ),
     );
    
  }
}
class FormLogin extends StatefulWidget {
  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your name", labelText: "Username"),
            ),
             TextFormField(
              decoration: InputDecoration(
                  hintText: "Enter your email", labelText: "Email"),
            ),
            SizedBox(height:20),
            Text("Gender"),
            DropdownButton(
                hint: Text("Select Gender"),
                value: _gender,
                items: ['Male', "Female"]
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  print("value is $value");
                  setState(() {
                    _gender = value;
                  });
                }),
                
          ])
          ),
    );
  }
}
