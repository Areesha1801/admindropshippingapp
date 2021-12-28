
import 'package:admindropshippingapp/adminside/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../brain.dart';


functionality obj =functionality();
TextEditingController _codeController= TextEditingController();
String num = "+92";
class MobileLoginPage extends StatefulWidget {
  const MobileLoginPage({Key key}) : super(key: key);


  @override
  _MobileLoginPageState createState() => _MobileLoginPageState();
}

class _MobileLoginPageState extends State<MobileLoginPage> {

   TextEditingController nameController = TextEditingController();
   TextEditingController numberController = TextEditingController();
   @override
   void initState() {
     super.initState();
     Firebase.initializeApp().whenComplete(() {
       print("completed");
       setState(() {});
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff69A03A),
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Login Page',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 30.0,
              right: 30.0,
              bottom: 20.0,
            ),
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff69A03A)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                IntlPhoneField(
                  controller: numberController,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff69A03A)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FlatButton(
                  textColor: Colors.white,
                  color: const Color(0xff69A03A),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Get OTP",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onPressed: () {
                    num = num + numberController.text;
                    obj.getInfo(nameController.text, numberController.text);
                    final mobile = numberController.text.trim();
                    registerUser(mobile, context);

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Future registerUser(String mobile, BuildContext context) async{
  FirebaseAuth _auth = FirebaseAuth.instance;
  AuthCredential authCredential;

  _auth.verifyPhoneNumber(
      phoneNumber: num,
      timeout: Duration(seconds: 120),
      verificationCompleted: (authCredential){
        _auth.signInWithCredential(authCredential).then((UserCredential result){
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => AdminPage()
          ));
        }).catchError((e){
          print(e);
        });
      },
      verificationFailed: (FirebaseAuthException authException){
        print(authException.message);
      },
      codeSent: (String verificationId, [int forceResendingToken]){
        //show dialog to take input from the user
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              title: Text("Enter SMS Code"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: _codeController,
                  ),

                ],
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("Done"),
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    FirebaseAuth auth = FirebaseAuth.instance;

                    String smsCode = _codeController.text.trim();

                    authCredential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
                    auth.signInWithCredential(authCredential).then((UserCredential result){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => AdminPage()
                      ));
                    }).catchError((e){
                      print(e);
                    });
                  },
                )
              ],
            )
        );
      },
      codeAutoRetrievalTimeout: (String verificationId){
        verificationId = verificationId;
        print(verificationId);
        print("Timout");
      }
  );
}