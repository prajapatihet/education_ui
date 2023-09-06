import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  VideoSection({super.key});

  final List videoList = [
    'Introduction to Flutter',
    'Installing FLutter on Windows',
    'Setup Emulator on Windows',
    'Creaating our First App',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0
                  ? const Color(0xFF674AEF)
                  : const Color(0xFF674AEF).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(videoList[index]),
          subtitle: const Text('20 min 30 sec'),
        );
      },
    );
  }
}
