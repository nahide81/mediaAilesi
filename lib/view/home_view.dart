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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              children: [
                Center(
                  child: Text('Hello,Duru',style: TextStyle(fontSize: 30,
                  fontFamily: 'Protest Riot'),),
                ),
                Spacer(),
                Icon(Icons.account_circle,size: 50,)

              ],

            ),


             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Expanded(
                  
                   child: GestureDetector(
                     onTap: (){
                       print('TODO');
                     },
                     child: Center(
                       child: Stack(
                         children: [
                           Image.asset(
                             "resim/resim2/Ekran Resmi 2024-02-10 10.31.06.png",
                              fit: BoxFit.cover,
                             height: 235,
                           ),
                           const Positioned(
                             top: 20,
                             left: 15,
                             width: 135,
                             child: Text(
                               'Calories',
                               style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                            Positioned(
                             right: 20,
                             top: 20,
                             child: Icon(Icons.monitor_heart,
                               color: Colors.white,),
                           )

                         ],
                       ),
                     ),
                   ),
                 ),
                 Expanded(
                   child: GestureDetector(
                     onTap: (){
                       print('Food');
                     },
                     child: Center(
                       child: Stack(
                         children: [
                           Image.asset(
                             "resim/resim2/Ekran Resmi 2024-02-10 10.36.01.png",

                             height: 235,),

                           Positioned(
                             top:20,
                             left:20,
                             child: Text(
                               'Water',
                             style: TextStyle(
                               fontSize: 20,
                               color: Colors.purple,
                               fontWeight: FontWeight.bold

                             )),
                           ),
                           Positioned(
                             right: 20,
                             top: 20,
                             child: Icon(Icons.water_drop,
                               size: 30,
                               color: Colors.purple,),
                           )

                         ],
                       ),
                     ),
                   ),
                 ),

               ],
             ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Stack(
                      children: [
                        Image.asset(
                          "resim/resim2/Ekran Resmi 2024-02-10 12.36.18.png",
                          width: 200,
                          height: 200,),
                        const Positioned(
                          top: 20,
                          left: 20,

                          child: Text(
                            'Walk',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ) ,



                          ),
                        ),
                        Positioned(
                        right: 20,
                        top: 20,
                          child:Icon(Icons.directions_run,
                            color: Colors.purple,),
                        ) ,
                      ],
                    ),

                  ),

                ),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      "resim/resim2/Ekran Resmi 2024-02-10 12.36.18.png",
                      width: 200,
                      height: 200,),
                  ),
                ),


              ],

            ),
       


          ],
        ),
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
