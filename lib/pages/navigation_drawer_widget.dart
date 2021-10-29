
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {

  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
final padding = EdgeInsets.symmetric(horizontal: 20);

  Widget _buildIcon()
  {
    return Icon(Icons.add_a_photo);
  }

  @override
  Widget build(BuildContext context) {
    final String name = 'Name';
    final String email = '_@gmail.com';
    
    return Drawer(
      child: Material(
          color: Colors.blue,
          child: ListView(
            padding: padding,
            children: [
              buildHeader(
                //urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () {


                }
              ),
              SizedBox(height: 40),
              buildMenuItem(
                text: 'Edit Profile',
                icon: Icons.people,
              ),
             
              SizedBox(height: 40),
              buildMenuItem(
                text: 'Settings',
                icon: Icons.settings,
              ),
              SizedBox(height: 40),
              buildMenuItem(
                text: 'Notifications',
                icon: Icons.notifications_on
              ),
               SizedBox(height: 40),
              buildMenuItem(
                text: 'About Us',
                icon: Icons.star,
              ),
               SizedBox(height: 40),
              buildMenuItem(
                text: 'Log Out',
                icon: Icons.power_settings_new,
              ),
            ],
          )),
    );
  }

  buildMenuItem({
    required String text,
     required IconData icon,
     }) {
       final color = Colors.white;

       return ListTile(
         leading: Icon(icon, color: color,),
         title: Text(text, style: TextStyle(color: color),),
         onTap: () {},
       );
     }


  Widget buildHeader({
    required String name,
    required String email,
    required VoidCallback onClicked,
    final urlImage = 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F211677%2Fimage_icon&psig=AOvVaw1iX_3EKxu8_hxD-qZl1UO9&ust=1634676426089000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCJDpza_q1PMCFQAAAAAdAAAAABAD',
    final assetsImage = 'assets/images/image.png',
  }) => InkWell(
    onTap: onClicked,
    child: Container(
      padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
      child: Row(
        children: [
          CircleAvatar(radius: 60, backgroundImage: NetworkImage(urlImage)),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 10,color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                email,
                style: TextStyle(fontSize: 10,color: Colors.white),
              )
            ]
          )

        ],
      ),
    )

  );
}