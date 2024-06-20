import 'package:flutter/material.dart';

List studentsList =[
  {
    'name': 'Vishal',
    'grid': '5419',
    'std': '12th',
  }
];

List StudentModalList =[];

class StudentModal{
  String? name,grid,std;

  StudentModal(this.name,this.grid,this.std);

  StudentModal.toList({required l1})
  {
    for(int i=0; i<l1.length; i++)
      {
        StudentModalList.add(l1[i]);
      }
  }
}