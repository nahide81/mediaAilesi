import 'package:flutter/material.dart';

class watertrack extends StatelessWidget {
  const watertrack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
          child: Image.asset(
            "resim/resim2/image 111.png",
            width: 300,
            height: 250,
          ),
        ),

          Text('Your Body Need Water', style: TextStyle(fontSize:30, fontWeight: FontWeight.bold),)
        
        ],
      ) ,
    );
  }

}
