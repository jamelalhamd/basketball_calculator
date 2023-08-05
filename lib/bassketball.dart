


import 'package:flutter/material.dart';

class basketball extends StatelessWidget {
  const basketball({super.key});

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

          const Row(

            children: [
             mycoulum1() ,

              Divider(height:10,indent: 10,thickness: 10,color: Colors.black, ),
              mycoulum2() ,




            ],
          ),
          SizedBox(height: 50),
          mybutton(titel: 'Reset'),

        ],
      ),

    );
  }
}

class mycoulum2 extends StatelessWidget {
  const mycoulum2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: const [
        SizedBox(height: 20),
        Text("Team B",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),

        Text("0",style: TextStyle(fontSize: 200,fontWeight: FontWeight.bold)),

       mybutton(titel: "Add 1 point"),
        mybutton(titel: "Add 2 point"),
        mybutton(titel: "Add 2 point"),






      ],


    );
  }
}
class mycoulum1 extends StatelessWidget {
  const mycoulum1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 20),
        Text("Team A",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)),

        Text("0",style: TextStyle(fontSize: 200,fontWeight: FontWeight.bold)),

        mybutton(titel: "Add 1 point"),
        mybutton(titel: "Add 2 point"),
        mybutton(titel: "Add 2 point"),





      ],


    );
  }
}

class mybutton extends StatelessWidget {
  const mybutton({
    super.key, required this.titel,
  });
final String titel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          color: kcolors,
          width: 140,
            height: 40,
          child: Center(child: Text(titel,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)),
        ),
      ),
    );
  }
}


const Color kcolors =Colors.orangeAccent;