import 'package:cross_file_image/cross_file_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class FromCamera extends StatefulWidget {
  const FromCamera({Key? key}) : super(key: key);

  @override
  State<FromCamera> createState() => _FromCameraState();
}

class _FromCameraState extends State<FromCamera> {
  XFile? xFile;
  void getImageFromCamera() async{
    final imagePicker = ImagePicker();
    xFile = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {

    });
  }
  @override
  void initState() {
    // TODO: implement initState
    getImageFromCamera();

  }
  @override
  Widget build(BuildContext context) {
    if(xFile != null) {
      return Container(
          child: Image(image: XFileImage(xFile!),));
    }
    else{
      return Container();
    }

  }
  }

