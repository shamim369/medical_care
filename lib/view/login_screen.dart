import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:medicare/view/home_page_screen.dart';
import 'package:medicare/view/registration_screen.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
import 'dart:convert';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}
class User {
  final String email;
  final String password;

  User(this.email, this.password);

  User.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        password = json['password'];

  Map<String, dynamic> toJson() =>
      {
        'email': email,
        'password': password,
      };
}

class _loginScreenState extends State<loginScreen> {

  String _email, _password;
  final _key = GlobalKey<ScaffoldState>();
  bool _autoValidate = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  bool _isLoading = false;

  my(String email, String pass)async {

    /*Map<String, String> headers = {"Content-type": "application/x-www-form-urlencoded"};
    Map data = {
      'email': email,
      'password': pass
    };
    //final response = await http.get('https://raw.githubusercontent.com/shamim369/jsondata/main/user.json/');
    String url = 'https://raw.githubusercontent.com/shamim369/jsondata/main/user.json/';
    //String url = "http://api.larntech.net/users/"+"454";
    final response = await http.get(url);

    print(response.body);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      //print(jsonString);
      var jsonMap = json.decode(jsonString);
      if(email == jsonMap['email']) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => Home()),
                (Route<dynamic> route) => false);
      }else {
        print("Login Faild");
      }
    } else {
      throw Exception('Failed to load post');
    }*/

  }
  /*signIn(String email, String pass)async{
    String url = "https://raw.githubusercontent.com/shamim369/jsondata/main/user.json/";
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map body = {"email":email,"password":pass};
    var jsonResponse;
    var res = await http.post(url,body: body);
    //need to check the api status
    if(res.statusCode == 200){
      print("ok");
      jsonResponse = json.decode(res.body);
      print("Response status: ${res.statusCode}");
      print("Response status: ${res.body}");
      if(jsonResponse != null){
        setState(() {
          _isLoading = false;
        });

        sharedPreferences.setString("token", jsonResponse["token"]);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => Home()),
                (Route<dynamic> route) => false);

        //Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>HomePage()));
      }
      else{
        setState(() {
          _isLoading = false;
        });
        print("Response status: ${res.body}");
      }

    }
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://www.techandteen.com/wp-content/uploads/2020/11/MyHealthBD-Logo-High-Res.-300x107.png",height: 200,width: 200,),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        child: TextFormField(
                          controller: _emailController,
                          //onSaved: (input) => _email = input,
                          decoration: InputDecoration(
                            hintText: 'Emails',
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                          ),
                        ),
                      ),),
                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        child: TextFormField(
                          //onSaved: (input) => _password = input,
                          controller: _passController,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                              icon: Icon(Icons.lock)
                          ),
                          obscureText: true,
                        ),
                      ),),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text('Remember?'),
                  ),
                ],
              ),
             /* SizedBox(
                height: 60,
                width: 140,
                child: RaisedButton(
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Text('Sign In',style: TextStyle(
                        fontSize: 20,color: Colors.white
                    ),),
                    onPressed:/*(){
                      //print(_emailController.text);
                      /*setState(() {
                        _isLoading = true;
                      });*/
                      my("akramuzzamansiddique@gmail.com", "12345");
                    }*/
                    _emailController.text == "" ||
                        _passController.text == ""
                        ? null
                        :(){
                      setState(() {
                        _isLoading = true;
                      });
                      my(_emailController.text, _passController.text);
                    }
                ),
              ),*/
              GestureDetector(
                onTap: ()async{

                  Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                // onTap: _emailController.text == "" ||
                //     _passController.text == ""
                //     ? null
                //     :(){
                //   setState(() {
                //     _isLoading = true;
                //   });
                //   print(_emailController.text);
                //   my(_emailController.text, _passController.text);
                // },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        border: Border.all(color: Colors.grey),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      child: Padding(padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign in',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                            Icon(Icons.arrow_forward,color: Colors.white,size: 20,),
                          ],
                        ),
                      ),
                    )
                ),
              ),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child: Text("Don't have an account ?",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black54,
                      ),),
                    ),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Text("Sign Up",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.teal,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}