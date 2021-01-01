import 'package:flutter/material.dart';
import 'package:medicare/models/doctor_model.dart';
import 'package:medicare/repositories/doctor_repository.dart';



// ignore: camel_case_types
class DoctorWidget extends StatefulWidget {
  final Doctor doctor;
  DoctorWidget({this.doctor});

  @override
  _CompanyLlistState createState() => _CompanyLlistState();
}

// ignore: camel_case_types
class _CompanyLlistState extends State<DoctorWidget> {
  List<Doctor> doctor = List();
  @override
  void initState() {
    super.initState();
    DoctorListServices.getDoctor().then((x) {
      setState(() {
        doctor = x;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFEFEE),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Doctor List'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: doctor.length,
                itemBuilder: (BuildContext context, int idx) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Color(0XFFFFEFEE),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                        )
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),

                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: 5,bottom: 5,right: 5),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                    doctor[idx].imageUrl,
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.45,
                                      child: Text(
                                        doctor[idx].name,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        overflow: TextOverflow.ellipsis,

                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Text('Fees: ${doctor[idx].fees}',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13.0,
                                      ),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}