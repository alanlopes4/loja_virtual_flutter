import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";

class ProductsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: Firestore.instance.collection("products").getDocuments(),
      builder: (context, snapshot) {
        if(!snapshot.hasData)
          return Center(child: CircularProgressIndicator(),);
        else {
          return ListView(
            children: <Widget>[
              
            ],
            );
        }
      },
    );
  }
}