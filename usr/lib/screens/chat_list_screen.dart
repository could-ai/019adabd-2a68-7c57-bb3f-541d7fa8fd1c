import 'package:flutter/material.dart';
import '../models/chat_models.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  // Mock data for demonstration
  static final List<ChatUser> _dummyUsers = [
    ChatUser(id: '1', name: 'Alice', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Alice'),
    ChatUser(id: '2', name: 'Bob', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Bob'),
    ChatUser(id: '3', name: 'Charlie', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Charlie'),
    ChatUser(id: '4', name: 'Diana', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Diana'),
    ChatUser(id: '5', name: 'Ethan', avatarUrl: 'https://api.dicebear.com/7.x/avataaars/png?seed=Ethan'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _dummyUsers.length,
        itemBuilder: (context, index) {
          final user = _dummyUsers[index];
          return ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(user.avatarUrl!),
              backgroundColor: Colors.grey[200],
              child: user.avatarUrl == null ? Text(user.name[0]) : null,
            ),
            title: Text(
              user.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Hey, how are you doing today?',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('12:30 PM', style: TextStyle(fontSize: 12, color: Colors.grey)),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/chat',
                arguments: user,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
