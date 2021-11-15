// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:siraba_chariaw/PanneauContent/PanneauCardView.dart';

class DetailsPanneauContent extends StatefulWidget {
  const DetailsPanneauContent({Key? key, required this.imgPath})
      : super(key: key);
  final String imgPath;

  @override
  _DetailsPanneauContentState createState() => _DetailsPanneauContentState();
}

class _DetailsPanneauContentState extends State<DetailsPanneauContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.imgPath, height: 100, width: 100),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.volume_up, size: 30)),
        const Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Expanded(child: PanneauCardView())
      ],
    );
  }
}
