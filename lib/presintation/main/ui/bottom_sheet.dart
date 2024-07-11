import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

void bottomSheetDialogLanguage(BuildContext context, String code, String ccy) {
  int currentIndex = 0;
  bool selectedLacale = false;

  List locales = ["Uzbekiston", "English", "Rus"];
  List localCode = ["en", "ru", "uz"];
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {

        return Scaffold(
          endDrawerEnableOpenDragGesture: true,
          body: SingleChildScrollView(
            child: Container(
                height: 260.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular
                      (24.0), color: Colors.white),
                child: ListView.builder(
                    itemCount: locales.length,
                    itemBuilder: (context, index) {
                      selectedLacale = currentIndex == index;
                      return ListTile(
                        onTap: () {
                          currentIndex = index;

                          Locales.change(context, locales[index]);
                        },
                        title: locales[index],
                      );
                    })),
          )
        );
      });
}
