import 'package:flutter/material.dart';
import 'package:little_bute/view/login_view.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text('Welcome!',style: TextStyle(
                      color: Colors.pinkAccent.shade100,
                      fontWeight: FontWeight.bold,
                      fontSize: 60
                  ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Sign Up',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,


                ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextField(

                  decoration:InputDecoration(hintText:"Name Surname",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),



                ),
                SizedBox(
                  height: 20,
                ),
                TextField(

                  decoration:InputDecoration(hintText:"User Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:20,
                ),
                TextField(

                  decoration:InputDecoration(hintText:"Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),



                ),
                SizedBox(
                  height:20,
                ),
                TextField(
                  decoration:InputDecoration(hintText:"Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),


                ),
                SizedBox(
                  height:60,
                ),
                Center(
                  child: SizedBox(
                    height: 70,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.pinkAccent, // Yazı rengi
                        // Diğer özellikleri de özelleştirebilirsiniz
                      ),
                      onPressed: () {
                        // Butona tıklandığında yapılacak işlemler
                      },
                      child: Text('Sign Up',
                        style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: TextButton(

                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginView(),
                          ),
                        );
                        // Butona tıklandığında yapılacak işlemler
                      },
                      child: const Text('Login here',
                        style: TextStyle(fontSize: 20),),
                    ),
                  ),
                ),         
                Center(
                  child: Image.asset(
                    "resim/resim2/loginresim.png",
                    width: 300,
                    height: 250,),
                ),
                SizedBox(
                  height: 10,
                ),

              ],
            ),
          )
      ),
    );
  }
}

