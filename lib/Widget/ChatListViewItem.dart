import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:simple_chat_application/Global/Colors.dart' as myColors;
import 'package:simple_chat_application/View/ChatPageView.dart';

class ChatListViewItem extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String lastMessage;
  final String time;
  final bool hasUnreadMessage;
  final int newMesssageCount;
  const ChatListViewItem({
    Key? key,
    required this.image,
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.hasUnreadMessage,
    required this.newMesssageCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            onPressed: (context) {
              // Edit action
            },
            backgroundColor: Colors.green,
            icon: Icons.edit,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (context) {
              // Archive action - moved from secondaryActions
            },
            backgroundColor: Colors.blue,
            icon: Icons.archive,
            label: 'Archive',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            onPressed: (context) {
              // Share action - moved from secondaryActions
            },
            backgroundColor: Colors.indigo,
            icon: Icons.share,
            label: 'Share',
          ),
          SlidableAction(
            onPressed: (context) {
              // Delete action
            },
            backgroundColor: Colors.red,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 10,
                child: ListTile(
                  title: Text(
                    name,
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text(
                    lastMessage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: image,
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        time,
                        style: TextStyle(fontSize: 12),
                      ),
                      hasUnreadMessage
                          ? Container(
                              margin: const EdgeInsets.only(top: 5.0),
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  color: myColors.orange,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  )),
                              child: Center(
                                  child: Text(
                                newMesssageCount.toString(),
                                style: TextStyle(fontSize: 11),
                              )),
                            )
                          : SizedBox()
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatPageView(username: '',),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Divider(
            endIndent: 12.0,
            indent: 12.0,
            height: 0,
          ),
        ],
      ),
    );
  }
}