class ChatUser {
  final String id;
  final String name;
  final String? avatarUrl;

  ChatUser({required this.id, required this.name, this.avatarUrl});
}

class ChatMessage {
  final String id;
  final String text;
  final String senderId;
  final DateTime timestamp;
  final bool isMe;

  ChatMessage({
    required this.id,
    required this.text,
    required this.senderId,
    required this.timestamp,
    required this.isMe,
  });
}
