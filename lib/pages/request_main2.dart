import 'package:flutter/material.dart';
import 'package:project_gift_me/pages/navigation_drawer_widget.dart';
import 'package:project_gift_me/routes/routes.dart';

class RequestMain2 extends StatefulWidget {
  _RequestMainState2 createState() => _RequestMainState2();
}

class _RequestMainState2 extends State<RequestMain2> {
  int _currentpos = 0;

  Widget _buildContainer2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Container(
            height: 280,
            width: 340,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green, width: 1),
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
                  width: 340,
                  color: Colors.green,
                  child: Row(
                    children: [
                      Icon(Icons.person, size: 50, color: Colors.white),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          children: [
                            Text('UserName'),
                            SizedBox(height: 4),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Title',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 240, top: 40),
                  child: Text(
                    'Description: ',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 200),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(RouteManager.donationOptions);
                    },
                    child: Text(
                      'Assist',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Container(
            height: 280,
            width: 340,
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
                  width: 340,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Icon(Icons.person, size: 50, color: Colors.white),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          children: [
                            Text('UserName'),
                            SizedBox(height: 4),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Container(
            height: 280,
            width: 340,
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
                  width: 340,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Icon(Icons.person, size: 50, color: Colors.white),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          children: [
                            Text('UserName'),
                            SizedBox(height: 4),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to Gift Me',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
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
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(color: Colors.grey[300]),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  _buildContainer2(),
                  SizedBox(height: 10),
                  _buildContainer2(),
                  SizedBox(height: 10),
                  _buildContainer2(),
                  SizedBox(height: 10),
                  _buildContainer2(),
                  SizedBox(height: 10),
                  _buildContainer2(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildItems() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        height: 180,
        width: 350,
        color: Colors.blue[300],
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 130),
                  child: Text(
                    "User Name",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 100),
                  child: Text(
                    "User Name:",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 100),
                  child: Text(
                    "User Name:",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItems2() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        height: 150,
        width: 350,
        color: Colors.blue[300],
        child: Row(
          children: [
            Icon(
              Icons.image,
              size: 150,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Title:              ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Description: ",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 20),
                Text(
                  "Condition:     ",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItems3() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        height: 150,
        width: 350,
        color: Colors.blue[300],
        child: Row(
          children: [
            Icon(
              Icons.image,
              size: 150,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Title:              ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Description: ",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 20),
                Text(
                  "Condition:     ",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItems4() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        height: 150,
        width: 350,
        color: Colors.blue[300],
        child: Row(
          children: [
            Icon(
              Icons.image,
              size: 150,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Title:              ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Description: ",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 20),
                Text(
                  "Condition:     ",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigation() {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.blue)
    ]);
  }

  Widget _buildItems5() {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
      child: Container(
        height: 150,
        width: 350,
        color: Colors.blue[300],
        child: Row(
          children: [
            Icon(
              Icons.image,
              size: 150,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Title:              ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Description: ",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 20),
                Text(
                  "Condition:     ",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(),
    );
  }

  Widget _buildTopBar() {
    return Row(
      children: [
        SizedBox(width: 8),
        IconButton(
          onPressed: () {
            _buildDrawer();
          },
          splashColor: Colors.white,
          icon: Icon(
            Icons.menu,
            size: 40,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 80),
        Text(
          "Gift Me",
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
        SizedBox(width: 80),
        Icon(
          Icons.settings,
          color: Colors.white,
          size: 40,
        ),

        // Text("Food Items", style: TextStyle(fontSize: 20, color: Colors.white),),
        // Text("Other Items", style: TextStyle(fontSize: 20, color: Colors.white),)
      ],
    );
  }

  Widget _buildProfile() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 105,
          ),
          child: Container(
            width: 180.0,
            height: 140.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 4,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSelectPage() {
    return Row(
      children: [
        SizedBox(width: 25),
        FlatButton(onPressed: () {
           Navigator.of(context).pushNamed(RouteManager.requestMain);
          
        }, child: Text('Food Items', style: TextStyle(color: Colors.black, fontSize: 20),)),
        SizedBox(width: 15),
        Text(
          'Other Items',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        SizedBox(width: 35),
        Icon(
          Icons.sort,
          size: 20,
          color: Colors.white,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 80,
          title: Text('Gift Me'),
          centerTitle: true,
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 10),
          //     child: Icon(Icons.settings,size: 40),
          //   )
          // ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
          ),
        ),
        body: Column(children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(40),
                        bottomRight: const Radius.circular(40),
                      )),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 0),
                  _buildSelectPage(),
                  SizedBox(height: 10),
                  _buildContainer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_left,
                          color: Colors.blue,
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(RouteManager.mainPage);
                            },
                            child: Text(
                              'Donations',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
                            )),
                        
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 730),
                child: BottomNavigationBar(
                  currentIndex: _currentpos,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                        backgroundColor: Colors.green),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: "Search",
                        backgroundColor: Colors.green),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add_box, size: 30),
                        label: "Donations",
                        backgroundColor: Colors.green),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: "Profile",
                        backgroundColor: Colors.green),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.textsms_outlined),
                        label: "Forum",
                        backgroundColor: Colors.green)
                  ],
                  onTap: (index) {
                    setState(() {
                      _currentpos = index;
                    });
                  },
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
