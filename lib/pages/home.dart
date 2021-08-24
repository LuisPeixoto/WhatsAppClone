import 'package:flutter/material.dart';
import 'package:whatsappclone/pages/chats.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

 TabController? _tabController;


  @override
  void initState() {
    _tabController = new TabController(length: 4, initialIndex: 1, vsync: this)
    ..addListener(() {
      
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WhatsApp'),
      actions:[
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
      ],
       bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.all(12),
          tabs: [
            Icon(Icons.camera_alt),
            Container(
                width: 90, alignment: Alignment.center, child: Text('CONVERSAS')),
            Container(
                width: 90, alignment: Alignment.center, child: Text('STATUS')),
            Container(
                width: 90, alignment: Alignment.center, child: Text('CHAMADAS'))
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Icon(Icons.camera_alt)),
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Chats(images:'assets/user/HomemAranha.jpeg', title:'Peter Parker', message: 'Lorem ipsum nec mollis, quis'),
                  Chats(images:'assets/user/CapitaoAmerica.jpeg', title:'Capitão América', message: 'Lorem ipsum nec mollis, quis'),
                  Chats(images:'assets/user/HomemDeFerro.png', title:'Homem de ferro', message: 'Lorem ipsum nec mollis, quis'),
                  Chats(images:'assets/user/Hulk.jpeg', title:'Hulk', message: 'Lorem ipsum nec mollis, quis'),
                  Chats(images:'assets/user/ViuvaNegra.jpg', title:'Viúva Negra', message: 'Lorem ipsum nec mollis, quis'),

                ],
              );
            },
            
          ),
          Text('STATUS'),
          Text('CHAMADAS'),
      ],),
      
    );
  }
}