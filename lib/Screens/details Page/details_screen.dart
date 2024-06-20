import 'package:exam_core_flutter/Global.dart';
import 'package:flutter/material.dart';

import '../home_screen2/home_screen2.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.black,
          centerTitle: true,
          title: Text('Detail Screen'),
        ),
        body: ListView.builder(itemCount: 1,itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 340,
                    child: ListTile(
                      title: Text(txtGrid.text,style: TextStyle(fontSize: 15),),
                      leading: Text(txtName.text,style: TextStyle(fontSize: 20),),
                      subtitle: Text(txtStd.text,style: TextStyle(fontSize: 15),),
                      trailing: IconButton(onPressed: () {
                        setState(() {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: Column(
                                children: [
                                  Text('Are you sure to Edit the Detail'),
                                  Row(
                                    children: [
                                      Text('Name : '),
                                      SizedBox(
                                        height: 80,
                                        width: 180,
                                        child: TextFormField(
                                          controller: txtName,
                                          decoration: InputDecoration(
                                            hintText: 'Name',
                                            labelText: 'Name',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1,color: Colors.black),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1.5,color: Colors.black),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('Grid : '),
                                      SizedBox(
                                        height: 80,
                                        width: 200,
                                        child: TextFormField(
                                          controller: txtGrid,
                                          decoration: InputDecoration(
                                            hintText: 'Grid',
                                            labelText: 'Grid',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1,color: Colors.black),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1.5,color: Colors.black),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('Std : '),
                                      SizedBox(
                                        height: 80,
                                        width: 200,
                                        child: TextFormField(
                                          controller: txtStd,
                                          decoration: InputDecoration(
                                            hintText: 'Std',
                                            labelText: 'Std',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1,color: Colors.black),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(width: 1.5,color: Colors.black),
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(onPressed: () {
                                  Navigator.pop(context);
                                }, child: Text('Cancel')),
                                TextButton(onPressed: () {
                                  //Navigator.pushNamed(context, '/');
                                  setState(() {

                                  });
                                  Navigator.pop(context);
                                }, child: Text('Agree')),
                              ],
                            );
                          },);
                        });
                      }, icon: Icon(Icons.edit))
                    ),
                  ),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.delete)),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 340,
                    child: ListTile(
                        title: Text(txtGrid.text,style: TextStyle(fontSize: 15),),
                        leading: Text(txtName.text,style: TextStyle(fontSize: 20),),
                        subtitle: Text(txtStd.text,style: TextStyle(fontSize: 15),),
                        trailing: IconButton(onPressed: () {
                          setState(() {
                            showDialog(context: context, builder: (context) {
                              return AlertDialog(
                                title: Column(
                                  children: [
                                    Text('Are you sure to Edit the Detail'),
                                    Row(
                                      children: [
                                        Text('Name : '),
                                        SizedBox(
                                          height: 80,
                                          width: 180,
                                          child: TextFormField(
                                            controller: txtName2,
                                            decoration: InputDecoration(
                                              hintText: 'Name',
                                              labelText: 'Name',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1,color: Colors.black),
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1.5,color: Colors.black),
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Grid : '),
                                        SizedBox(
                                          height: 80,
                                          width: 200,
                                          child: TextFormField(
                                            controller: txtGrid2,
                                            decoration: InputDecoration(
                                              hintText: 'Grid',
                                              labelText: 'Grid',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1,color: Colors.black),
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1.5,color: Colors.black),
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text('Std : '),
                                        SizedBox(
                                          height: 80,
                                          width: 200,
                                          child: TextFormField(
                                            controller: txtStd2,
                                            decoration: InputDecoration(
                                              hintText: 'Std',
                                              labelText: 'Std',
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1,color: Colors.black),
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(width: 1.5,color: Colors.black),
                                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(onPressed: () {
                                    Navigator.pop(context);
                                  }, child: Text('Cancel')),
                                  TextButton(onPressed: () {
                                    //Navigator.pushNamed(context, '/');
                                    setState(() {

                                    });
                                    Navigator.pop(context);
                                  }, child: Text('Agree')),
                                ],
                              );
                            },);
                          });
                        }, icon: Icon(Icons.edit))
                    ),
                  ),
                  IconButton(onPressed: () {

                  }, icon: Icon(Icons.delete)),
                ],
              )
            ],
          );
        },),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },child: Icon(Icons.add),
        ),
      ),
    );
  }
}
