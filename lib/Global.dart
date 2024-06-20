import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
File? fileImage;

TextEditingController txtName = TextEditingController();
TextEditingController txtGrid = TextEditingController();
TextEditingController txtStd = TextEditingController();

var FormKey = GlobalKey();

