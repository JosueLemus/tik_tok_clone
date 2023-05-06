import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/discover_provider.dart';
import '../../widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();
    return Scaffold(
        body: discoverProvider.initLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : VideoScrollableView(
                videos: discoverProvider.videos,
              ));
  }
}
