import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_gift_me/routes/routes.dart';

class DonationOptions extends StatefulWidget {
  _DonationOptionsState createState() => _DonationOptionsState();
}

class _DonationOptionsState extends State<DonationOptions> {

  Widget _buildContainment2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 180),
          child: InkWell(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0.0, 5), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Image.asset('assets/images/donate.png')],
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(RouteManager.donor);
              }),
        )
      ],
    );
  }

  Widget _buildContainment3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 180),
          child: InkWell(
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0.0, 5), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Image.asset('assets/images/donate3.png')],
              ),
            ),
            onTap: () {
                Navigator.of(context).pushNamed(RouteManager.recipient);
              }
          ),
          
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 160,
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
                padding: EdgeInsets.only(left: 115, top: 20),
                child: Text(
                  'Donations',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 20),
              child: _buildContainment2(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 165, top: 370),
              child: Text(
                'Donor',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 280),
              child: _buildContainment3(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 145, top: 630),
              child: Text(
                'Recipient',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
