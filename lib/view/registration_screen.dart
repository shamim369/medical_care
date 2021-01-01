import 'package:flutter/material.dart';
import 'package:medicare/view/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _key = GlobalKey<ScaffoldState>();
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
                          //onSaved: (input) => _password = input,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              border: InputBorder.none,
                              icon: Icon(Icons.account_box)
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
                          decoration: InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                              icon: Icon(Icons.email)
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
                          decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              border: InputBorder.none,
                              icon: Icon(Icons.lock)
                          ),
                          obscureText: true,
                        ),
                      ),),
                  )
              ),
              GestureDetector(
                onTap: ()async{
                  // if(await authProvider.signIn()){
                  //   _key.currentState.showSnackBar(
                  //       SnackBar(content: Text("Login Field"))
                  //   );
                  //   return;
                  // }
                  // categoryProvider.loadCategories();
                  // restaurantProvider.loadSingleRestaurant();
                  // productProvider.loadProducts();
                  // authProvider.clearController();
                  // changeScreenReplacement(context, MyHomePage());
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        border: Border.all(color: Colors.grey),
                        borderRadius:BorderRadius.circular(20),
                      ),
                      child: Padding(padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Registration',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),),
                          ],
                        ),
                      ),
                    )
                ),
              ),
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
                      child: Text("have you an account ?",style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.black54,
                      ),),
                    ),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10),
                        child: Text("Sign in",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.teal,
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }
}