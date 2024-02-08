import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key,required this.username});
String username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Welcomess ${widget.username}'),
          ),
          Center(
            child: Image.asset(
              "resim/resim2/LittleBite.png",
              width: 300,
              height: 150,),
          ),
           Row(
             children: [
               GestureDetector(
                 onTap: (){
                   print('TODO');
                 },
                 child: Image.asset(
                   "resim/resim2/Group 1686550929.png",
                   width: 235,
                   height: 235,),
               ),
               GestureDetector(
                 onTap: (){
                   print('Food');
                 },
                 child: Image.asset(
                   "resim/resim2/Group 1686550930.png",
                   width:235,
                   height: 235,),
               ),

             ],
           ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Center(
                child: Image.asset(
                  "resim/resim2/Group 1686550933.png",
                  width: 235,
                  height: 235,),
              ),
              Center(
                child: Image.asset(
                  "resim/resim2/Group 1686550936.png",
                  width: 250,
                  height: 235,),
              ),


            ],

          ),
          Row(
            children: [
          Center(
            child: Image.asset(
              "resim/resim2/Group 1686550937.png",
              width: 235,
              height: 235,),
          ),


          ],

          ),

          SizedBox(
            height: 20,
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
      items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Anasayfa',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'Arama',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profil',
    ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.blue,
    onTap: _onItemTapped,
    ),

    );


  }
}
