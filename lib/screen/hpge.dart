import 'package:flutter/material.dart';
import 'dart:math';
class Pagee extends StatefulWidget {
  const Pagee({super.key});

  @override
  State<Pagee> createState() => _PageeState();
}

class _PageeState extends State<Pagee> {

  int a = 1;
  int b = 1;
  int c = 1;

  void generateRandomNumber() {
    setState(() {
      // a = Random().nextInt(6) + 1;
      // b = Random().nextInt(6) + 1;
      // c = Random().nextInt(6) + 1;

      a = 5;
      b = 5;
      c = 5;


      if (a==b) {
          // Condition is true, show alert dialog
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Equal Dice"),
                content: Text("The Dice a and b are equal."),
                actions: <Widget>[
                  TextButton(
                    child: Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      else if(a==c)
        {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Equal Dice"),
                content: Text("The Dice a and c are equal."),
                actions: <Widget>[
                  TextButton(
                    child: Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      else if(b==c)
        {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Equal Dice"),
                content: Text("The Dice b and c are equal."),
                actions: <Widget>[
                  TextButton(
                    child: Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      if(a==b && a==c && (b==c))
      {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Equal Dice"),
              content: Text("The 3 Dice are equal."),
              actions: <Widget>[
                TextButton(
                  child: Text("Close"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.green,

        leadingWidth: 80,

        leading: Padding(
          padding: const EdgeInsets.only(left:8,top:7),
          child: Text("Dice",style: TextStyle(color: Colors.white,fontSize: 25),),
        ),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [ Text("I'm Feeling Lucky",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(height: 100,width: 100,
                decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: AssetImage("pic1/$a.jpeg"),fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(10))),),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(height: 100,width: 100,
                  decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: AssetImage("pic1/$b.jpeg"),fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10))),),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(height: 100,width: 100,
                  decoration: BoxDecoration(color: Colors.red,image: DecorationImage(image: AssetImage("pic1/$c.jpeg"),fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(10))),),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 100,right: 100 ),
            child: GestureDetector(onTap: () {
              generateRandomNumber();

            },
              child: Container(height: 52,width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(child: Text("Start",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)),

              ),
            ),
          ),
          // SizedBox(height: 20,),
          //
          // ElevatedButton(
          //   onPressed: () {
          //     // Action to perform when the button is pressed
          //   },
          //   child: Text('Press Me'),
          // ),
          // SizedBox(height: 20,),
          //
          // TextButton(
          //   onPressed: () {
          //     // Action to perform when the button is pressed
          //   },
          //   child: Text('Press Me'),
          // ),
          //
          // SizedBox(height: 20,),
          // OutlinedButton(
          //   onPressed: () {
          //     // Action to perform when the button is pressed
          //   },
          //   child: Text('Press Me'),
          // ),
          // SizedBox(height: 20,),
          //
          // IconButton(
          //   icon: Icon(Icons.add),
          //   onPressed: () {
          //     // Action to perform when the button is pressed
          //   },
          // ),
          //
          // SizedBox(height: 20,),
          //
          // FloatingActionButton(
          //   onPressed: () {
          //     // Action to perform when the button is pressed
          //   },
          //   child: Icon(Icons.add),
          // )
          //
          //
          //


        ],




      ),
           backgroundColor: Colors.lightGreen,

    );
  }
}
