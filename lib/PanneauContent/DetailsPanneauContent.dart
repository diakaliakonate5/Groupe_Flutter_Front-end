// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:siraba_chariaw/PanneauContent/PanneauCardView.dart';

class DetailsPanneauContent extends StatefulWidget {
  const DetailsPanneauContent(
      {Key? key,
      required this.imgPath,
      required this.audio,
      required this.description,
      required this.panels,
      required this.idCategory,
      required this.panelsDesc,
      required this.panelsAudios}) : super(key: key);
  final String imgPath;
  final String description;
  final String audio;
  final List panels;
  final List panelsDesc;
  final List panelsAudios;
  final int idCategory;

  @override
  _DetailsPanneauContentState createState() => _DetailsPanneauContentState();
}

class _DetailsPanneauContentState extends State<DetailsPanneauContent> {
  AudioPlayer player = AudioPlayer();
  late AudioCache audioCache;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    audioCache = AudioCache(fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Image.asset(widget.imgPath, height: 100, width: 100),
          IconButton(
              onPressed: () {audioCache.play(widget.audio);}, icon: const Icon(Icons.volume_up, size: 30)),
          Text(
            widget.description,
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(child: PanneauCardView(imagePanels: widget.panels[widget.idCategory], panelsDesc: widget.panelsDesc[widget.idCategory], panelsAudios: widget.panelsAudios[widget.idCategory]))
        ],
      ),
    );
  }
}
