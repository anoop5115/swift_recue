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
      appID: 2038335105,
      appSign:
          'a513163d079054b50d5bc450f5d6d3abfd09b4357c6f668c0980c4edfc6339d8',
      callID: callID,
      userID: userID,
      userName: "username$userID",
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
