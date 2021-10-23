import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'contacts_list.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Dasboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image.network("https://cdn.pixabay.com/photo/2021/08/07/08/50/staircase-6528080_960_720.jpg")
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:Image.asset('images/logo.png') ,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ContactsList()
                  ));
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  width: 150,
                  height: 100,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.people, color:Colors.white,
                        size: 24,),
                      Text('Contatos',
                        style: TextStyle(color: Colors.white, fontSize: 16),)
                    ],),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
