import 'package:flutter/material.dart';

class GetLink extends StatefulWidget {
  const GetLink({ Key? key }) : super(key: key);

  @override
  State<GetLink> createState() => _GetLinkState();
}

//getting the drive link
class _GetLinkState extends State<GetLink> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          const DefaultTextStyle(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ), 
            child: Text('Instruction: Please provide the link of the Google Drive that contains the requirements of the candidate.')),
          Container(
            width: 700,
            height: 40,
            child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
              )
            )   
          )
        
        ],
      ),
    );
  }
}