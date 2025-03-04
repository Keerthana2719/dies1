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










// import 'package:flutter/material.dart';

// class Formm extends StatefulWidget {
//   const Formm({super.key});

//   @override
//   State<Formm> createState() => _FormmState();
// }

// class _FormmState extends State<Formm> {
//   final List<Map<String, String>> pagesList = [
//     {'name': 'A3', 'ups': '10', 'price': '500'},
//     {'name': 'A4', 'ups': '8', 'price': '400'},
//     {'name': 'A5', 'ups': '6', 'price': '300'},
//   ];

//   final List<String> machines = ['Machine 1', 'Machine 2', 'Machine 3'];
//   final List<String> colors = ['Black', 'Color'];
//   final List<Map<String, String>> laminations = [
//     {'name': 'Glossy', 'price': '100'},
//     {'name': 'Matte', 'price': '120'},
//   ];

//   List<Map<String, TextEditingController>> formSections = [];

//   @override
//   void initState() {
//     super.initState();
//     addNewSection(); // Start with one section
//   }

//   void addNewSection() {
//     setState(() {
//       formSections.add({
//         "nameController": TextEditingController(),
//         "pagesController": TextEditingController(),
//         "papersController": TextEditingController(),
//         "upsController": TextEditingController(),
//         "noOfPapersController": TextEditingController(),
//         "machineController": TextEditingController(),
//         "colorController": TextEditingController(),
//         "laminationController": TextEditingController(),
//       });
//     });
//   }

//   void deleteSection(int index) {
//     setState(() {
//       formSections[index].values.forEach((controller) => controller.dispose());
//       formSections.removeAt(index);
//     });
//   }

//   void calculateNoOfPapers(int index) {
//     var pagesText = formSections[index]["pagesController"]!.text;
//     var upsText = formSections[index]["upsController"]!.text;

//     if (pagesText.isNotEmpty && upsText.isNotEmpty) {
//       int pages = int.tryParse(pagesText) ?? 0;
//       int ups = int.tryParse(upsText) ?? 1;
//       int result = ups > 0 ? (pages / ups).ceil() : 0;
//       formSections[index]["noOfPapersController"]!.text = result.toString();
//     }
//   }

//   @override
//   void dispose() {
//     for (var section in formSections) {
//       section.values.forEach((controller) => controller.dispose());
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Form Example')),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             ListView.builder(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemCount: formSections.length,
//               itemBuilder: (context, index) {
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text('Name'),
//                     TextField(
//                       controller: formSections[index]["nameController"],
//                       decoration: const InputDecoration(border: OutlineInputBorder()),
//                     ),
//                     const SizedBox(height: 10),

//                     /// 🔹 Row for No. of Pages, Papers (Dropdown), and UPS
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text('No. of Pages'),
//                               TextField(
//                                 controller: formSections[index]["pagesController"],
//                                 keyboardType: TextInputType.number,
//                                 decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 onChanged: (value) => calculateNoOfPapers(index),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text('Papers'),
//                               DropdownButtonFormField<Map<String, String>>(
//                                 items: pagesList.map((page) {
//                                   return DropdownMenuItem(
//                                     value: page,
//                                     child: Text("${page['name']} - ${page['ups']} UPS - ₹${page['price']}"),
//                                   );
//                                 }).toList(),
//                                 onChanged: (value) {
//                                   if (value != null) {
//                                     setState(() {
//                                       formSections[index]["papersController"]!.text = value['name']!;
//                                       formSections[index]["upsController"]!.text = value['ups']!;
//                                       calculateNoOfPapers(index);
//                                     });
//                                   }
//                                 },
//                                 decoration: const InputDecoration(border: OutlineInputBorder()),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text('UPS'),
//                               TextField(
//                                 controller: formSections[index]["upsController"],
//                                 decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 readOnly: true,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10),

//                     /// 🔹 Row for No. of Papers
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text('No. of Papers'),
//                               TextField(
//                                 controller: formSections[index]["noOfPapersController"],
//                                 decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 readOnly: true,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),

//                     /// 🔹 Machine, Color, and Lamination Selection
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 10),
//                       padding: const EdgeInsets.all(16.0),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.black),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: const [
//                               Expanded(child: Text('Machine')),
//                               Expanded(child: Text('Color')),
//                               Expanded(child: Text('Lamination')),
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: DropdownButtonFormField(
//                                   items: machines.map((machine) {
//                                     return DropdownMenuItem(
//                                       value: machine,
//                                       child: Text(machine),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     setState(() {
//                                       formSections[index]["machineController"]!.text = value!;
//                                     });
//                                   },
//                                   decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: DropdownButtonFormField(
//                                   items: colors.map((color) {
//                                     return DropdownMenuItem(
//                                       value: color,
//                                       child: Text(color),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     setState(() {
//                                       formSections[index]["colorController"]!.text = value!;
//                                     });
//                                   },
//                                   decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: DropdownButtonFormField(
//                                   items: laminations.map((lamination) {
//                                     return DropdownMenuItem(
//                                       value: lamination['name'],
//                                       child: Text(lamination['name']!),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     setState(() {
//                                       formSections[index]["laminationController"]!.text = value!;
//                                     });
//                                   },
//                                   decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 ),
//                               ),
//                             ],
//                           ),
//                            Row(
//                             children: const [
//                               Expanded(child: Text('Machine')),
//                               Expanded(child: Text('Color')),
//                               Expanded(child: Text('Lamination')),
//                             ],
//                           ),
//                           const SizedBox(height: 10),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: DropdownButtonFormField(
//                                   items: machines.map((machine) {
//                                     return DropdownMenuItem(
//                                       value: machine,
//                                       child: Text(machine),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     setState(() {
//                                       formSections[index]["machineController"]!.text = value!;
//                                     });
//                                   },
//                                   decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: DropdownButtonFormField(
//                                   items: colors.map((color) {
//                                     return DropdownMenuItem(
//                                       value: color,
//                                       child: Text(color),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     setState(() {
//                                       formSections[index]["colorController"]!.text = value!;
//                                     });
//                                   },
//                                   decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                               Expanded(
//                                 child: DropdownButtonFormField(
//                                   items: laminations.map((lamination) {
//                                     return DropdownMenuItem(
//                                       value: lamination['name'],
//                                       child: Text(lamination['name']!),
//                                     );
//                                   }).toList(),
//                                   onChanged: (value) {
//                                     setState(() {
//                                       formSections[index]["laminationController"]!.text = value!;
//                                     });
//                                   },
//                                   decoration: const InputDecoration(border: OutlineInputBorder()),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),

//                     /// 🔹 Delete Button
//                     IconButton(
//                       onPressed: () => deleteSection(index),
//                       icon: const Icon(Icons.delete, size: 30),
//                     ),
//                   ],
//                 );
//               },
//             ),

//             /// 🔹 Add New Section Button
//             IconButton(
//               onPressed: addNewSection,
//               icon: const Icon(Icons.add, size: 30),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
