import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:http/http.dart'as http;

class UploadImageServer extends StatefulWidget {
  const UploadImageServer({super.key});

  @override
  State<UploadImageServer> createState() => _UploadImageServerState();
}

class _UploadImageServerState extends State<UploadImageServer> {

  File? image;
  final _picker = ImagePicker();
  bool showspiner = false;

  Future getImage() async{
    final imagepicker= await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    if(imagepicker != null){
      image = File(imagepicker.path as List<Object>);
      setState(() {

      });
    }
    else{
      print('No image is found');
    }
  }

    Future<void> uploadImage() async{
        setState(() {
          showspiner = true;
        });
        var stream = new http.ByteStream(image?.openRead());
        stream.cast();

        var length = await image!.length();

        var uri = Uri.parse('https://fakestoreapi.com/products');

        var request = new http.MultipartRequest('POST', uri);

        request.fields['title'] = "Static Title";

        var multiport = new http.MultipartRequest('image',
            stream,
            length);

        request.fields.add(multiport)

        var responce = await request.send();

        if(responce.statusCode == 200){
          print('Uploaded');
        }else{
          print('Does not upload')
        }
    }
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showspiner,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Upload Image'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                getImage();
              },
              child: Container(
                child: image == null ? Center(child: Text('Pick Image'),) :
                    Container(
                      child: Center(
                        child: Image.file(
                          File(image!.path).absolute,
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
              ),
            ),
            SizedBox(
              height: 150,
            ),
            GestureDetector(
              onTap: (){
                uploadImage();
              },
              child: Container(
                height: 50,
                width: 200,
                color: Colors.green,
                child: Text('Upload'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
