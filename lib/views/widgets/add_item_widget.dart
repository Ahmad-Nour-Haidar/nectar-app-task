import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:task/views/widgets/custom_text_form_field.dart';

import '../../core/constant/app_color.dart';
import 'custom_button.dart';

class AddItemWidget extends StatelessWidget {
  const AddItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      height: MediaQuery.sizeOf(context).height * .75,
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                'Add',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                  color: AppColor.fontColor,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                const Divider(),
                const CustomTextFormField(
                  hint: 'Name',
                  keyboardType: TextInputType.name,
                ),
                const Divider(),
                const CustomTextFormField(
                  hint: 'Description',
                  keyboardType: TextInputType.text,
                ),
                const Divider(),
                const CustomTextFormField(
                  hint: 'Price',
                  keyboardType: TextInputType.number,
                ),
                const Divider(),
                const Gap(32),
                CustomButton(
                  onPressed: () {},
                  height: 65,
                  radius: 20,
                  child: const Text(
                    'Add item',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
