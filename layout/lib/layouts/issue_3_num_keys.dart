import 'package:flutter/material.dart';
import 'package:layout/widgets/layout_page.dart';

class NumKeysLayout extends StatelessWidget {
  final double runSpacing = 30;
  final double spacing = 30;
  final int listSize = 10;
  final int columns = 3;

  @override
  Widget build(BuildContext context) {
    return LayoutPage(
        title: 'Floating Action Button',
        child: NumKeysContainer(
          child: LayoutBuilder(builder: (context, constraints) {
            final w =
                (constraints.maxWidth - runSpacing * (columns - 1)) / columns;
            return Wrap(
              runSpacing: runSpacing,
              spacing: spacing,
              alignment: WrapAlignment.center,
              children: List.generate(listSize, (index) {
                return Container(
                  width: w,
                  height: w,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            );
          }),
        ));
  }
}

class NumKeysContainer extends StatelessWidget {
  final Widget child;
  const NumKeysContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(60),
      child: child,
    );
  }
}
