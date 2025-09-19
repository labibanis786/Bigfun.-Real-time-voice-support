/ lib/agora_config.dart

/// Agora configuration file for BigFun app.
/// Contains your App ID, Token, and default Channel Name.

class AgoraConfig {
  /// Your Agora App ID (from Agora Console)
  static const String appId = "739a61014ae64d2eaf7dd9eb4872664e";

  /// Token (keep null for testing, required for production use)
  static const String token = null;

  /// Default voice chat channel name
  static const String channelName = "bigfun_channel";
}
