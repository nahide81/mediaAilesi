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
          Row(
            children: [

              SizedBox(
                width: 180,
                height: 180,
                child: Card(
                  color: const Color.fromRGBO(141, 174, 74, 1.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 50,


                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15.0), // Dikey yönde 8 piksel boşluk ekler
                        child: Row(),
                      ),


                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 180,
                height: 180,
                child: Card(
                  color: const Color.fromRGBO(244, 198, 29, 1.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.fact_check,
                        color: Colors.white,
                        size: 70
                        ,
                      ),
                      Text(
                        "To Do List",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),


                 ],
               ),
         Row(
           children: [
           Text('A healthy dieta better life',style: TextStyle(
           color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.bold
    ),)

         ],)
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
