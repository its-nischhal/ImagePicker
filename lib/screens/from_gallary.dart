import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cross_file_image/cross_file_image.dart';

class FromGallary extends StatefulWidget {
  const FromGallary({Key? key}) : super(key: key);

  @override
  State<FromGallary> createState() => _FromGallaryState();
}

class _FromGallaryState extends State<FromGallary> {

  XFile? xFile;

  void getImage() async{
    final imagePicker = ImagePicker();
    print('executed1');
    xFile = await imagePicker.pickImage(source: ImageSource.gallery);
    print('executed2');
    setState(() {
    });
  }
  
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getImage();
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
