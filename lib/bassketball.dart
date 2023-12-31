


import 'package:flutter/material.dart';

class basketball extends StatefulWidget {
  const basketball({super.key});

  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {

  int A=0 ;
  int B=0 ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar:  AppBar(

        centerTitle: true,
        title: Text(
          "Point Counter"
          ,style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),
        ),
        backgroundColor:Colors.orangeAccent,
        leading: Icon(Icons.home,color: Colors.black),

        actions: [IconButton(onPressed: (){ Navigator.pop(context);}, icon: Icon(Icons.sports_baseball,size: 30,color: Colors.red,))],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Row(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Column(

          children:  [
          SizedBox(height: 20),
          Text("Team A",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),

          Text("$A",style: TextStyle(fontSize: 100,fontWeight: FontWeight.normal)),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    A=A+1;
                  });
                },
                child: Container(
                  color: kcolors,
                  width: 140,
                  height: 40,
                  child: Center(child: Text('Add 1 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                onTap: (){

               setState(() {
                 A=A+2;
               });
                },
                child: Container(
                  color: kcolors,
                  width: 140,
                  height: 40,
                  child: Center(child: Text('Add 2 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    A=A+3;
                  });
                },
                child: Container(
                  color: kcolors,
                  width: 140,
                  height: 40,
                  child: Center(child: Text('Add 3 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                ),
              ),
            ),






        ],


      ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
              ),

              Column(

                children:  [
                  SizedBox(height: 20),
                  Text("Team B",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),

                  Text("$B",style: TextStyle(fontSize: 100,fontWeight: FontWeight.normal)),

                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          B=B+1;
                        });
                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: Center(child: Text('Add 1 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          B=B+2;
                        });
                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: Center(child: Text('Add 2 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          B=B+3;
                        });
                      },
                      child: Container(
                        color: kcolors,
                        width: 140,
                        height: 40,
                        child: Center(child: Text('Add 3 Point',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
                      ),
                    ),
                  ),






                ],


              ),




            ],
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  B=0;
                  A=0;
                });
              },
              child: Container(
                color: kcolors,
                width: 140,
                height: 40,
                child: Center(child: Text('Reset',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
              ),
            ),
          ),

        ],
      ),

    );
  }
}

const Color kcolors=Colors.orangeAccent;