import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

String userID = "dr javad";

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({super.key, required this.callID});
  final String callID;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: 1367529522,
      appSign:
          '58047e295d976616814d1e6bc66cc9d88b26331b8c48e0551d63094a7d733b77',
      callID: callID,
      userID: userID,
      userName: "username$userID",
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
