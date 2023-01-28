// import 'dart:html';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:multimedia/view/pages/gobles.dart';

class PalyAudio extends StatefulWidget {
  const PalyAudio({super.key});

  @override
  State<PalyAudio> createState() => _PalyAudioState();
}

class _PalyAudioState extends State<PalyAudio> {
  int i = 0;

  kom() async {
    await DataPalyer.paly_p.open(
      Audio.network(
        "${DataPalyer.full[DataPalyer.nu]['s']}",
      ),
      autoStart: false,
    );
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    kom();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 250,
            width: 250,
            child: ClipRRect(
              child: Image.network(
                "${DataPalyer.full[DataPalyer.nu]['i']}",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          StreamBuilder(
            stream: DataPalyer.paly_p.currentPosition,
            builder: (context, snapshot) {
              Duration? duration = snapshot.data;
              return Column(
                children: [
                  Slider(
                    value: duration!.inSeconds.toDouble(),
                    onChanged: (value) {
                      DataPalyer.paly_p.seek(
                        Duration(
                          seconds: value.toInt(),
                        ),
                      );
                    },
                    min: 0,
                    max: (DataPalyer.paly_p.current.valueOrNull == null)
                        ? 0
                        : DataPalyer
                            .paly_p.current.value!.audio.duration.inSeconds
                            .toDouble(),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "${duration.toString().split('.')[0]}",
                        style: TextStyle(
                          height: -0.025,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      (DataPalyer.paly_p.current.valueOrNull == null)
                          ? Text(
                              "0:00:00",
                              style: TextStyle(
                                height: -0.2,
                              ),
                            )
                          : Text(
                              "${DataPalyer.paly_p.current.value!.audio.duration.toString().split('.')[0]}",
                              style: TextStyle(
                                height: -0.2,
                              ),
                            ),
                    ],
                  ),
                ],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () async {
                 await DataPalyer.paly_p.seekBy(
                    Duration(seconds: -10),
                  );
                },
                icon: Icon(Icons.skip_previous),
              ),
              IconButton(
                onPressed: () async {
                  if (i == 0) {
                    setState(() {
                      i = 1;
                    });
                    await DataPalyer.paly_p.play();
                  } else {
                    setState(() {
                      i = 0;
                    });
                    await DataPalyer.paly_p.pause();
                  }
                },
                icon: (i == 0) ? Icon(Icons.play_arrow) : Icon(Icons.pause),
              ),
              IconButton(
                onPressed: () async {
                 await DataPalyer.paly_p.seekBy(
                    Duration(seconds: 10),
                  );
                },
                icon: Icon(Icons.skip_next),
              ),
              IconButton(
                onPressed: () async {
                  DataPalyer.paly_p.open(
                      Audio.network("${DataPalyer.full[DataPalyer.nu]['s']}"));
                },
                icon: Icon(Icons.restart_alt),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
