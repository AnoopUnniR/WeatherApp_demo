import 'package:flutter/material.dart';

class LanguageSelectionButton extends StatelessWidget {
  final Function(String) onLanguageSelected;

  const LanguageSelectionButton({super.key, required this.onLanguageSelected});
  @override
  Widget build(BuildContext context) {
    ValueNotifier<String> notifier = ValueNotifier("English");
    return ValueListenableBuilder(
        valueListenable: notifier,
        builder: (context, value, _) {
          return TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('English'),
                          onTap: () {
                            onLanguageSelected("en");
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text('Spanish'),
                          onTap: () {
                            notifier.value = "Spanish";
                            onLanguageSelected("es");
                            Navigator.pop(context);
                          },
                        ),
                        ListTile(
                          title: const Text('French'),
                          onTap: () {
                            notifier.value = "French";
                            onLanguageSelected("fr");
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text(
              notifier.value,
              style: const TextStyle(fontSize: 15, color: Colors.blue),
            ),
          );
        });
  }
}
