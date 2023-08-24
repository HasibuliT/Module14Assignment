import 'package:flutter/material.dart';

class MatchTile extends StatelessWidget {
  final String matchName;
  final bool? isMatchRunning;
  final VoidCallback onClick;

  const MatchTile(
      {Key? key,
        required this.matchName,
        this.isMatchRunning,
        required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('Title'),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            matchName,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
      subtitle: Chip(
        label: Text(
          isMatchRunning == true ? 'Running' : 'Finished',
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: isMatchRunning == true ? Colors.green : Colors.red,
      ),
      trailing: const Icon(
        Icons.arrow_right_alt_rounded,
        color: Colors.white,
      ),
      tileColor: Colors.deepPurple,
      onTap: onClick,
    );
  }
}