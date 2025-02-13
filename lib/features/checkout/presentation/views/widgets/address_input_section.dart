import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_styles.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

import '../../../../../core/widgets/custom_switch.dart';

class AddressInputSection extends StatefulWidget {
  const AddressInputSection({super.key});

  @override
  State<AddressInputSection> createState() => _AddressInputSectionState();
}

class _AddressInputSectionState extends State<AddressInputSection> {
  final GlobalKey<FormState> formKey = GlobalKey();

  String name = '',
      email = '',
      address = '',
      city = '',
      floorNumber = '',
      phoneNumber = '';

  bool saveAddress = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              hintText: S.of(context).fullName,
              textInputType: TextInputType.name,
              onSaved: (value) {
                name = value!;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              hintText: S.of(context).email,
              textInputType: TextInputType.emailAddress,
              onSaved: (value) {
                email = value!;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              hintText: S.of(context).phoneNumber,
              textInputType: TextInputType.number,
              onSaved: (value) {
                phoneNumber = value!;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              hintText: S.of(context).address,
              textInputType: TextInputType.text,
              onSaved: (value) {
                address = value!;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              hintText: S.of(context).city,
              textInputType: TextInputType.text,
              onSaved: (value) {
                city = value!;
              },
            ),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              hintText: S.of(context).floorNumberAndApartmentNumber,
              textInputType: TextInputType.text,
              onSaved: (value) {
                floorNumber = value!;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                CustomSwitch(
                  value: saveAddress,
                  onChanged: (value) {
                    saveAddress = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  S.of(context).saveAddress,
                  style: AppStyles.styleSemiBold13(context).copyWith(
                    color: const Color(0xff949d9e),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
