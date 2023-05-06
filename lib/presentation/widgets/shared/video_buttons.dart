import 'package:flutter/material.dart';
import 'package:tik_tok_clone/config/helpers/human_formats.dart';
import 'package:tik_tok_clone/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            value: video.likes, iconData: Icons.favorite, iconColor: Colors.red)
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconData),
          color: color,
          iconSize: 30,
        ),
        Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
