import 'package:flutter/material.dart';
import 'package:medicare/widgets/doctor_widget.dart';
import 'package:medicare/widgets/patient_widget.dart';
import 'package:medicare/widgets/prescription_widget.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHealthBD'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://s3-eu-west-1.amazonaws.com/intercare-web-public/wysiwyg-uploads%2F1569586526901-doctor.jpg'),
              ),
              decoration: BoxDecoration(color: Colors.teal),
              accountName: Text('Dr. Mohammad Shamim'
                //user.userModel?.name ?? "username lading...",
              ),
              accountEmail: Text('mohammadshamim@gmail.com'
                //user.userModel?.email ?? "email loading...",
              ),
            ),

            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PatentWidget()));
              },
              leading: Icon(Icons.home),
              title: Text("Patent"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PrescriptionWidget()));
              },
              leading: Icon(Icons.person),
              title: Text("Prescription"),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorWidget()));
                //user.signOut();
                //changeScreenReplacement(context, loginScreen());
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Doctor"),
            ),
            ListTile(
              onTap: () {
                //user.signOut();
                //changeScreenReplacement(context, loginScreen());
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Log out"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20) )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0,bottom: 20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400],
                    offset: Offset(1, 1),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: ListTile(
                leading: Icon(Icons.search,color: Colors.red,),
                title: TextField(
                  textInputAction: TextInputAction.search,
                  onSubmitted: (pattern)async{

                  },
                  decoration: InputDecoration(
                    hintText: 'Find Hospital Name',hintStyle: TextStyle(fontSize: 16),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
