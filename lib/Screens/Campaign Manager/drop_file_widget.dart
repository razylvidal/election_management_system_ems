import 'dart:js';

import 'package:election_management_system_ems/Screens/Campaign%20Manager/file_data_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DroppedFileWidget extends StatelessWidget {

  final File_Data_Model? file;
  const DroppedFileWidget({Key? key, required this.file}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  return Container(
    child:
      Container( width: 300,child: buildImage(context)),
    
  );
  }

  Widget buildImage(BuildContext context){
    
    if (file == null) return buildEmptyFile('No Selected File');

    print(file!.url);

    return Column(
      children: [
        if(file != null) buildFileDetail(file),
        Image.network(file!.url,
          width: MediaQuery.of(context).size.width /2,
          height: MediaQuery.of(context).size.height/2,
          fit: BoxFit.cover,
          //errorBuilder:(context,error,_)=>buildEmptyFile('No Preview'),
        ),
      ],
    );
  }

  Widget buildEmptyFile(String text){
     return Container(
       width: 50,
       height: 50,
       color: Colors.grey[200],
       child: Center(child: Text(text)),
     );
  }

  Widget buildFileDetail(File_Data_Model? file) {
    final style = TextStyle( fontSize: 15);
    return Container(
       //margin: EdgeInsets.only(left: 24),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Text('Selected File Preview ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
           Text('Name: ${file?.name}',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 15),),
           const SizedBox(height: 10,),
           Text('Type: ${file?.mime}',style: style),
           const SizedBox(height: 10,),
           Text('Size: ${file?.size}',style: style),
           SizedBox(height: 20,)
         ],
       ),
    );
  }
}