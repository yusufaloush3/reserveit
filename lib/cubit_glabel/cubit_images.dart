import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reservelt/cubit_glabel/state_images.dart';


class ImageCubit extends Cubit<ImagesStates> {
  ImageCubit() : super(ImagesInitialStates());
  static ImageCubit get(context) => BlocProvider.of(context);
  File? image;
  final picker = ImagePicker();

  Future getImage(BuildContext context) async {
    final pickerFile = await picker.getImage(source: ImageSource.gallery);
    if (pickerFile != null) {
      image = File(pickerFile.path);
      emit(ImagesChangeStates());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'لم يتم اختبار صوره',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 18.0, color:Colors.white),
          ),
          backgroundColor: Colors.black,
          duration: Duration(seconds: 3),
        ),
      );
      emit(ImagesChangeStates());
    }
  }
}

