import 'dart:io';
import 'package:exam_core_flutter/Global.dart';
import 'package:exam_core_flutter/utils/list.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

StudentModal? studentmodal;

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 1,
            shadowColor: Colors.black,
            centerTitle: true,
            title: Text('Students Data'),
            leading: Icon(Icons.menu),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.black,
                        backgroundImage: (fileImage != null)? FileImage(fileImage!) : null,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () async {
                                XFile? xFileImage = await imagePicker.pickImage(
                                    source: ImageSource.gallery);
                                setState(() {
                                  fileImage = File(xFileImage!.path);
                                });
                              },
                              icon: Icon(
                                Icons.image,
                                size: 50,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 60,
                          ),
                          IconButton(
                              onPressed: () async {
                                XFile? xFileImage = await imagePicker.pickImage(
                                    source: ImageSource.camera);
                                setState(() {
                                  fileImage = File(xFileImage!.path);
                                });
                              },
                              icon: Icon(
                                Icons.camera_alt,
                                size: 50,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                        width: 350,
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
                      SizedBox(
                        height: 80,
                        width: 350,
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
                      SizedBox(
                        height: 80,
                        width: 350,
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
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/detail');
                          }, child: Text('Submit',style: TextStyle(
                          fontSize: 20
                      ),)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
TextEditingController txtName2 = TextEditingController();
TextEditingController txtGrid2 = TextEditingController();
TextEditingController txtStd2 = TextEditingController();
