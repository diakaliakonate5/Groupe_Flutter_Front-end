// ignore_for_file: file_names

import 'dart:ui';
import 'package:flutter/material.dart';

class PanneauCardView extends StatefulWidget {
  const PanneauCardView({Key? key, required this.imagePanels}) : super(key: key);
  final List imagePanels;


  @override
  _PanneauCardViewState createState() => _PanneauCardViewState();
}

class _PanneauCardViewState extends State<PanneauCardView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: ListView(
        children: [
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 50,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 1.0,
              children: [
                makeCardForSubPanneau(widget.imagePanels[0], "Panneau 1", "rtyioz"),
                makeCardForSubPanneau(widget.imagePanels[1], "Panneau 2", "ppssdoo"),
                makeCardForSubPanneau(widget.imagePanels[2], "Panneau 3", "dsdjjsj"),
                makeCardForSubPanneau(widget.imagePanels[3], "Panneau 4", "ghfjft"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget makeCardForSubPanneau(String imagePath, String nomPanneau, String description) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 5),
      child: InkWell(
        onTap: () {
          showDialogFunc(context, nomPanneau, imagePath, "",
              description);
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5)
              ],
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: 100, width: 100),
              const SizedBox(height: 15),
              Text(
                nomPanneau,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  showDialogFunc(context, nom, photo, audio, description) {
    return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(15),
              height: 320,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    nom,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      photo,
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.volume_up,
                      size: 40,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    // width: 200,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        description,
                        maxLines: 3,
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
