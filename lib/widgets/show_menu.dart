// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ungserviceweb/utility/my_constant.dart';
import 'package:ungserviceweb/widgets/show_text.dart';

class ShowMenu extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Function() pressFunc;
  const ShowMenu({
    Key? key,
    required this.iconData,
    required this.title,
    required this.pressFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData, size: 36, color: MyConstant.dark,),
      title: ShowText(
        text: title,
        textStyle: MyConstant().h2Style(),
      ),
      onTap: pressFunc,
    );
  }
}
