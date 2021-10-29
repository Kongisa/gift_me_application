import 'package:flutter/material.dart';
import 'package:project_gift_me/pages/navigation_drawer_widget.dart';
import 'package:project_gift_me/routes/routes.dart';


class MainPage2 extends StatefulWidget {
  _MainPageState2 createState() => _MainPageState2();
}

class _MainPageState2 extends State<MainPage2> {

  int _currentpos = 0;




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
                  _buildItems(),
                  SizedBox(height: 10),
                  _buildItems2(),
                  SizedBox(height: 10),
                  _buildItems3(),
                  SizedBox(height: 10),
                  _buildItems4(),
                  SizedBox(height: 10),
                  _buildItems5()
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
      child: InkWell(
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
       onTap: () {
            Navigator.of(context).pushNamed(RouteManager.getItem2);
          }

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

  Widget _buildDrawer()
  {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        
      ),
    );
  }
  

  Widget _buildTopBar() {
    return Row(
      children: [
        SizedBox(width: 8),
        IconButton(
          onPressed: (){

            _buildDrawer();
            

          },
          splashColor: Colors.white,
          icon: Icon(Icons.menu,size: 40, color: Colors.white,),
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
           Navigator.of(context).pushNamed(RouteManager.mainPage);
          
        }, child: Text('Food Items', style: TextStyle(color: Colors.black, fontSize: 20),)),
        
        Text(
          'Other Items',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        SizedBox(width: 50),
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
              color: Colors.blue,
              
            ),
           
          ),
          
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
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
                      padding: const EdgeInsets.only(left: 280),
                      child: Row(
                        children: [
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(RouteManager.requestMain);
                            },
                            child: Text(
                              'Requests',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 15),
                            )),
                          Icon(Icons.arrow_right, color: Colors.green,)
                          

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
                        backgroundColor: Colors.blue),
                        BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        label: "Search",
                        backgroundColor: Colors.blue),
                        BottomNavigationBarItem(
                        icon: Icon(Icons.add_box,size: 30),
                        label: "Donations",
                        backgroundColor: Colors.blue),
                        BottomNavigationBarItem(
                        icon: Icon(Icons.person),
                        label: "Profile",
                        backgroundColor: Colors.blue),
                        BottomNavigationBarItem(
                        icon: Icon(Icons.textsms_outlined),
                        label: "Forum",
                        backgroundColor: Colors.blue)
                  ],
                  onTap: (index) {

                    setState(() {
                      _currentpos = index;
                    });



                  },),
                ),
              ],
            )
          ]
        ),
        
      ),
    );
  }
}