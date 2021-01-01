import 'package:flutter/material.dart';
import 'package:medicare/models/prescription_model.dart';
import 'package:medicare/repositories/prescription_repository.dart';



// ignore: camel_case_types
class PrescriptionWidget extends StatefulWidget {
  final Prescription prescription;
  PrescriptionWidget({this.prescription});

  @override
  _CompanyLlistState createState() => _CompanyLlistState();
}

// ignore: camel_case_types
class _CompanyLlistState extends State<PrescriptionWidget> {
  List<Prescription> prescription = List();
  @override
  void initState() {
    super.initState();
    PrescriptionListServices.getPrescription().then((x) {
      setState(() {
        prescription = x;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFEFEE),
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Prescription List'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: prescription.length,
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
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width*0.45,
                                  child: Text(
                                    'Patient Name: ${prescription[idx].patientname}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,

                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('Doctor: ${prescription[idx].doctorname}',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 13.0,
                                  ),),
                                Text('Date: ${prescription[idx].dateandtime}',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 13.0,
                                  ),),

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