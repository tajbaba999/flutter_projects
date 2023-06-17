// import 'dart:js';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginphone/MyProfile.dart';
import 'package:pinput/pinput.dart';
// import 'package:verify/phone.dart';
// import 'package:verify/profile.dart';

class MyVerify extends StatefulWidget {
  final String mobileNumber;

  const MyVerify({Key? key, required this.mobileNumber}) : super(key: key);

  @override
  State<MyVerify> createState() => _MyVerifyState();
}


class _MyVerifyState extends State<MyVerify> {

  // final FirebaseAuth auth = FirebaseAuth.instance;

  // void _navigateToProfilePage() {
  // Navigator.push(
  //   context as BuildContext,
  //   MaterialPageRoute(builder: (context) => MyProfile()),
  // );
  // }

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    var code = "";
    return  Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Verify number",
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "code is sent to ${widget.mobileNumber}",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Pinput(
              length: 6,
              showCursor: true,
            ),
            SizedBox(height: 20.0),
            Row(

              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    "Didn't recieve the code?",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    width: 140,
                    height: 20,
                    child: const Center(
                      child: Text(
                        'Request Again?',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed:() {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfile()),
                );
                // PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: MyPhone.verify, smsCode: code);

                // Sign the user in (or link) with the credential
                // await auth.signInWithCredential(credential);

                // Navigator.pushNamed(context, 'profile');
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                primary: Colors.blue[900],
              ),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  "VERIFY AND CONTINUE",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}