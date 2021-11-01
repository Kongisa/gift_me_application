import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_gift_me/routes/routes.dart';

class Recipients extends StatefulWidget {
  _RecipientsState createState() => _RecipientsState();
}

class _RecipientsState extends State<Recipients> {
  Widget _buildContainer2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: Container(
            height: 340,
            width: 360,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  spreadRadius: 100,
                  blurRadius: 7,
                  offset: Offset(6.0, 55), // changes position of shadow
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 360,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 150),
                        child: Text(
                          'Title',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                    'Description:',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(3.0, 25), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(500))),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 20), child: _buildImage()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildImage() {
    return Image.asset('assets/images/donate3.png',
        width: 100, height: 100, fit: BoxFit.fill);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(40),
                        bottomRight: const Radius.circular(40),
                      ))),
            ),
            Padding(
                padding: EdgeInsets.only(left: 130, top: 20),
                child: Text(
                  'Recipient',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Padding(
                    padding: EdgeInsets.only(bottom: 540),
                    child: _buildContainer()),
                SizedBox(height: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 340, left: 120),
              child: Text(
                'Request Donation',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 420),
              child: _buildContainer2(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 780, left: 260),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.splashScreen4);
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(120, 40),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
