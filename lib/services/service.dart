import 'package:chat_gpt/widgets/drop_down.dart';
import 'package:flutter/material.dart';
import '../constants/constant.dart';
import '../widgets/text_widget.dart';

class Services {
  static Future<void> showModalSheet({required BuildContext context}) async {
    await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        backgroundColor: scaffoldBackgroundColor,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Flexible(
                  child: TextWidget(
                    label: 'Escoge un Modelo:',
                    fontSize: 16,
                  ),
                ),
                Flexible( child: ModelsDrowDownWidget()),
              ],
            ),
          );
        });
  }
}
