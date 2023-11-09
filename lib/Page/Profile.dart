import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF785B),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/Home');
            },
            icon: Icon(Icons.arrow_back)),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
              // style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),

        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark? Icons.light_mode : Icons.dark_mode)
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(image: AssetImage("assets/img/profile.jpg"),),
                ),
              ),

              //Ten Profile
              SizedBox(height: 10),
              Text(
                  "Khiem Pham",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              Text(
                "khiem203@gmail.com",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepOrangeAccent,
                ),
              ),

              //Button Edit Profile
              SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                      "Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    Colors.deepOrangeAccent,
                      side: BorderSide.none,
                      shape: StadiumBorder()
                  ),
                ),
              ),

              SizedBox(height: 30),
              Divider(),
              SizedBox(height: 10),

              //Menu
              ProfileMenuWidget(),
              ProfileMenuWidget(),
              ProfileMenuWidget(),
              ProfileMenuWidget(),
              ProfileMenuWidget(),

            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40, height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.orangeAccent,
        ),
        child: Icon(Icons.manage_history, color: Colors.black),
      ),
      title: Text(
          "Setting",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrangeAccent,
        ),
      ),
      trailing: Container(
        width: 40, height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.shade300,
        ),
        child: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
    );
  }
}
