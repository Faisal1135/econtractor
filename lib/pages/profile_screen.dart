import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = 'profile-screen';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 15,
        ),
        GFListTile(
          avatar: GFAvatar(
            backgroundImage: AssetImage("assets/images/brick.png"),
          ),
          titleText: 'Faisal Kabir Galib',
          subtitleText: 'placeholderemail@gmail.com',
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileListTile(
                  leadIcon: Icons.gesture_rounded,
                  title: "Gender",
                  trailing: "Male"),
              ProfileListTile(
                  leadIcon: Icons.calendar_today,
                  title: "BrithDay",
                  trailing: "11-76-2018"),
              ProfileListTile(
                  leadIcon: Icons.phone,
                  title: "Phone",
                  trailing: "017451451455 "),
              ProfileListTile(
                  leadIcon: Icons.mail,
                  title: "Email",
                  trailing: "riojojt@giotort.com"),
              ProfileListTile(
                  leadIcon: Icons.lock,
                  title: "Change password",
                  trailing: "********"),
              ProfileListTile(
                  leadIcon: Icons.gps_fixed,
                  title: "Address",
                  trailing: "Rajshahi Ranibazar"),
            ],
          ),
        )
      ],
    );
  }
}

class ProfileListTile extends StatelessWidget {
  final IconData leadIcon;
  final String title;
  final String trailing;
  ProfileListTile({
    Key key,
    @required this.leadIcon,
    @required this.title,
    @required this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              leadIcon,
              color: Colors.red,
            ),
            SizedBox(
              width: 20,
            ),
            Text(title),
          ],
        ),
        Row(
          children: [
            Text(
              trailing,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(color: Colors.black38),
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.edit_outlined,
              color: Colors.red,
            )
          ],
        )
      ],
    );
  }
}
