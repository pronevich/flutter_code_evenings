import 'package:flutter/material.dart';
import 'package:layout/widgets/layout_page.dart';

class FabLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutPage(
        title: 'Floating Action Button',
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 20),
              child: FloatingActionButton(
                onPressed: null,
              ),
            )
          ],
        ));
  }
}
