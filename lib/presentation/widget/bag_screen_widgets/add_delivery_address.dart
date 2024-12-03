import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/bag_screen_widgets/textformfield1.dart';
import 'package:nike_app/presentation/widget/black_button.dart';

class AddDeliveryAddress extends StatefulWidget {
  const AddDeliveryAddress({super.key});

  @override
  State<AddDeliveryAddress> createState() => _AddDeliveryAddressState();
}

class _AddDeliveryAddressState extends State<AddDeliveryAddress> {
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController address1Controller = TextEditingController();
  TextEditingController address2Controller = TextEditingController();
  TextEditingController pCodeController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pNumController = TextEditingController();

  // Function to check if all fields are filled
  bool areAllFieldsFilled() {
    return fNameController.text.isNotEmpty &&
        lNameController.text.isNotEmpty &&
        address1Controller.text.isNotEmpty &&
        pCodeController.text.isNotEmpty &&
        cityController.text.isNotEmpty &&
        pNumController.text.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 750,
      width: double.infinity,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 20, top: 20, left: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Add Delivery Address',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.bk,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.remove,
                        size: 30,
                        color: AppColors.bk,
                      )),
                ],
              ),
            ),
            const Divider(),
            // Input fields
            Textformfield1(
                controller: fNameController, title: 'First Name', top: 30,isblack: areAllFieldsFilled(),),
            Textformfield1(controller: lNameController, title: 'Last Name',isblack: areAllFieldsFilled(),),
            Textformfield1(
                controller: address1Controller, title: 'Address Line 1',isblack: areAllFieldsFilled(),),
            Textformfield1(
                controller: address2Controller,
                title: 'Address Line 2(Optional)',isblack: areAllFieldsFilled(),),
            Textformfield1(controller: pCodeController, title: 'Postal code',isblack: areAllFieldsFilled(),),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // City TextFormField
                  Expanded(
                    child: TextFormField(
                      controller: cityController,
                      decoration: InputDecoration(
                        hintText: 'City',
                        hintStyle: TextStyle(color: areAllFieldsFilled() ? AppColors.bk : AppColors.gr4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.gr4),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.gr4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.gr4),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Country Dropdown
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        hintText: 'Country',
                        hintStyle: TextStyle(color: areAllFieldsFilled() ? AppColors.bk : AppColors.gr4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.gr4),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.gr4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: AppColors.gr4),
                        ),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'US',
                          child: Text('US',
                              style: TextStyle(color: AppColors.gr4)),
                        ),
                        DropdownMenuItem(
                          value: 'Canada',
                          child: Text('Canada',
                              style: TextStyle(color: AppColors.gr4)),
                        ),
                        DropdownMenuItem(
                          value: 'Mexico',
                          child: Text('Mexico',
                              style: TextStyle(color: AppColors.gr4)),
                        ),
                      ],
                      onChanged: (String? value) {},
                    ),
                  ),
                ],
              ),
            ),
            Textformfield1(controller: pNumController, title: 'Phone Number',isblack: areAllFieldsFilled(),),
            Textformfield1(controller: pCodeController, title: 'United States',isblack: areAllFieldsFilled(),),
            const SizedBox(height: 20),
            // Add Delivery Address Button
            GestureDetector(
              onTap: areAllFieldsFilled()
                  ? (){
                      if (kDebugMode) {
                        print("Delivery Address Added");
                      }
                    }
                  : null,
              child: BlackButton(
                text: 'Add Delivery Address',
                color: areAllFieldsFilled() ? AppColors.bk : AppColors.gr1,
                textColor: AppColors.gr4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
