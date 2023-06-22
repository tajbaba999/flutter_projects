import 'package:flutter/material.dart';
import 'package:http/http.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  Future<void> login(String email, String password) async {
    try{
      Response response = await post(
        Uri.parse('https://reqres.in/api/register'),
        body: {
            "email": email,
            "password": password
        }
      );
      if(response.statusCode == 200){
        print('Suecssfully created accpunt!');
      }else{
        print('Failed');
      }
    }catch(e){
      print(e.toString());
    }
  }

  TextEditingController emailcontoller = TextEditingController();
  TextEditingController passwordcontoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SignUp'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            TextField(
              controller: emailcontoller,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
          SizedBox(
            height: 11,
          ),
          TextField(
            controller: passwordcontoller,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          SizedBox(
            height: 11,
          ),
          GestureDetector(
            onTap: (){
              login(emailcontoller.text.toString(), passwordcontoller.text.toString());
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('Sign up')),
            ),
          )
        ],
      ),
    );
  }
}
