import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {

  final Widget title, subtitle,child;
  final Color color;
  final Function() onClick;

  const AppListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onClick,
    required this.child,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      tileColor: color,
      title: title,
      subtitle: subtitle,
      trailing: OutlinedButton(
          onPressed: (){
        onClick.call();
      }, child: child),
    );
  }
}
