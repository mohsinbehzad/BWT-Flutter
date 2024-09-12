import 'package:flutter/material.dart';
import 'package:social_media_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onprofileTap;
  final void Function()? onSignOut;
  const MyDrawer(
      {super.key, required this.onprofileTap, required this.onSignOut});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //header
              const DrawerHeader(
                  child: Icon(
                Icons.person,
                color: Colors.white,
                size: 64,
              )),

              // home list Tile
              MyListTile(
                  icon: Icons.home,
                  text: 'H O M E',
                  onTap: () => Navigator.pop(context)),

              // profile list Tile
              MyListTile(
                  icon: Icons.person,
                  text: 'P R O F I L E',
                  onTap: () => onprofileTap!()),
            ],
          ),

          // logout list Tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
                icon: Icons.logout,
                text: 'L O G O U T',
                onTap: () => onSignOut!()),
          ),
        ],
      ),
    );
  }
}
