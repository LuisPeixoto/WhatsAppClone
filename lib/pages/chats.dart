import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.all(8),
          leading: CircleAvatar(backgroundImage: AssetImage('assets/user/user.jpeg'),),
          title: Text('Peter Parker'),
          subtitle: Text('	Lorem ipsum nec mollis, quis. '),
          trailing: Column(children: [
            Text('12:00')
            ,Container(
              width: 18,
              margin: EdgeInsets.all(4),
              height: 18,
              child: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Text('1', style: TextStyle(color: Colors.white,),),
                ),
            )
          ],),
        ),
        Divider()
      ],
    );
  }
}