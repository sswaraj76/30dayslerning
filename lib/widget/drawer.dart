import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      'https://scontent.fbbi1-1.fna.fbcdn.net/v/t1.0-9/s960x960/71786113_2634676073435440_4349248445601546240_o.jpg?_nc_cat=100&ccb=3&_nc_sid=e3f864&_nc_ohc=EZlXodKqkjMAX8koJl2&_nc_ht=scontent.fbbi1-1.fna&tp=7&oh=076d7f6630f68b8c3ab1a7446acf8e0f&oe=604C9A05';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Swaraj'),
                  accountEmail: Text('Sswaraj413@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'My account',
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text(
                'Mail',
                textScaleFactor: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
