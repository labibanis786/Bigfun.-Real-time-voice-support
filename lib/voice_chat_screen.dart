import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import '../agora_config.dart';

class VoiceChatScreen extends StatefulWidget {
  const VoiceChatScreen({super.key});
  @override
  State<VoiceChatScreen> createState() => _VoiceChatScreenState();
}

class _VoiceChatScreenState extends State<VoiceChatScreen> {
  int? _remoteUid;
  late RtcEngine _engine;
  bool _joined = false;
  bool _muted = false;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await [Permission.microphone].request();
    _engine = createAgoraRtcEngine();
    await _engine.initialize(RtcEngineContext(appId: agoraAppId));

    _engine.registerEventHandler(RtcEngineEventHandler(
      onJoinChannelSuccess: (connection, elapsed) => setState(() => _joined = true),
      onUserJoined: (connection, uid, elapsed) => setState(() => _remoteUid = uid),
      onUserOffline: (connection, uid, reason) => setState(() => _remoteUid = null),
    ));

    await _engine.enableAudio();
    await _engine.joinChannel(token: agoraToken, channelId: defaultChannel, uid: 0, options: const ChannelMediaOptions());
  }

  void _toggleMute() {
    _muted = !_muted;
    _engine.muteLocalAudioStream(_muted);
    setState(() {});
  }

  @override
  void dispose() {
    _engine.leaveChannel();
    _engine.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Voice Room')),
      body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
        Text(_joined ? 'Joined channel' : 'Joining...'),
        const SizedBox(height: 8),
        Text(_remoteUid != null ? 'Remote: \$_remoteUid' : 'No remote user'),
        const SizedBox(height: 12),
        ElevatedButton(onPressed: _toggleMute, child: Text(_muted ? 'Unmute' : 'Mute')),
      ])),
    );
  }
}
