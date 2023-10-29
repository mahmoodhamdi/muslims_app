// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:muslims_app/constants.dart';

class ContentItem extends StatelessWidget {
  const ContentItem({
    Key? key,
    required this.contentName,
    this.onTap,
  }) : super(key: key);
  final void Function()? onTap;
  final String contentName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height / 4 - 64,
        width: MediaQuery.of(context).size.width / 2 - 48,
        decoration: BoxDecoration(
            color: kThirdColor,
            boxShadow: const [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: .3,
                  blurStyle: BlurStyle.outer,
                  color: Colors.grey)
            ],
            borderRadius: const BorderRadius.all(Radius.circular(16))),
        child: Center(
          child: Text(
            contentName,
            style: TextStyle(fontSize: 24, color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
