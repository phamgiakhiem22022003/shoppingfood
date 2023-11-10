import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:shoppingfood/Page/Profile.dart';
import 'package:shoppingfood/widget/my_text_box.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {

  final currentUser = FirebaseAuth.instance.currentUser!;

  Future<void> editField(String field) async {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF785B),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            icon: Icon(LineAwesomeIcons.angle_left)),

        title: Text(
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50),
          SizedBox(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(image: AssetImage("assets/img/profile.jpg"),),
            ),
          ),

          SizedBox(height: 20),
          Text(
            currentUser.email!,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),

          SizedBox(height: 50),

          //user Details
          Padding(
              padding: EdgeInsets.only(left: 25.0),
            child: Text(
              "My Details",
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),

          //username
          MyTextBox(
            text: "User bio",
            sectionName: "username",
            onPressed: () => editField("username"),
          ),


          //bio
          MyTextBox(
            text: "Empty bio",
            sectionName: "bio",
            onPressed: () => editField("bio"),
          ),


          //user posts




        ],
      ),

      // body: SingleChildScrollView(
      //   child: Container(
      //     padding: EdgeInsets.all(25),
      //     child: Column(
      //       children: [
      //         Stack(
      //           children: [
      //             SizedBox(
      //               width: 120,
      //               height: 120,
      //               child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(100),
      //                 child: Image(image: AssetImage("assets/img/profile.jpg"),),
      //               ),
      //             ),
      //             Positioned(
      //               bottom: 0,
      //               right: 0,
      //               child: Container(
      //                   width: 35,
      //                   height: 35,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(100),
      //                     color: Colors.orangeAccent,
      //                   ),
      //                   child: Icon(
      //                       LineAwesomeIcons.camera,
      //                       color: Colors.black,
      //                       size: 20)),
      //             )
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
