import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/account_settings_widget/account_setup_heading.dart';

class AccountSetupImgName extends StatefulWidget {
  final bool isSelected;
  final VoidCallback? onTap;
  final bool showDivider;
  final String image;
  final EdgeInsetsGeometry padding;
  final String heading;
  const AccountSetupImgName({
    super.key,
    this.onTap,
    this.isSelected = false,
    required this.heading,
    this.padding = EdgeInsets.zero,
    required this.image,
    this.showDivider = false,
  });

  @override
  State<AccountSetupImgName> createState() => _AccountSetupImgNameState();
}

class _AccountSetupImgNameState extends State<AccountSetupImgName> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  radius: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: AccountSetupHeading(text: widget.heading),
                ),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: widget.isSelected ? AppColors.w : AppColors.no,
                    borderRadius: BorderRadius.circular(100),
                    border: widget.isSelected
                        ? Border.all(
                            color: AppColors.w,
                            width: 3.0,
                          )
                        : Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                  ),
                  child: Center(
                      child: widget.isSelected
                          ? const Icon(
                              Icons.done,
                              size: 15,
                            )
                          : Container()),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            if (widget.showDivider)
              const Divider(
                height: 6,
                color: Colors.grey,
              )
          ],
        ),
      ),
    );
  }
}
