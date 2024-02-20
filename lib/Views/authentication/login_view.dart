// ignore_for_file: prefer_const_constructors

import 'package:big_smq_mobile_app/Views/widgets/custom_button.dart';
import 'package:big_smq_mobile_app/Views/widgets/custom_textfield.dart';
import 'package:big_smq_mobile_app/utils/colors.dart';
import 'package:big_smq_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _saveMyPasswordCheckValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //   I C O N
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Images/output-onlinepngtools (1) 1.png"),
                    ),
                  ),
                ),
                // T I T L E
                SizedBox(
                  height: Dimensions.height45,
                ),
                Text(
                  "B I G S M Q  M O B I L E",
                  style:
                      TextStyle(color: blueThemeColor, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Dimensions.height45,
                ),
                // T E X T F I E L D S   ( U S E R N A M E  &  P A S S W O R D)
                CustomTextfield(hintext: "Utilisateur"),
                SizedBox(
                  height: Dimensions.height10,
                ),
                CustomTextfield(hintext: "Mot de passe"),
                SizedBox(
                  height: Dimensions.height15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 38,
                      child: Checkbox(
                        activeColor: blueThemeColor,
                        value: _saveMyPasswordCheckValue,
                        onChanged: (bool? value) {
                          setState(() {
                            _saveMyPasswordCheckValue = value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 2),
                    GestureDetector(
                      onTap: () => setState(() {
                        _saveMyPasswordCheckValue = !_saveMyPasswordCheckValue;
                      }),
                      child: Text(
                        "Mémoriser mon mot de passe",
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height15,
                ),
                CustomButton(buttonText: "S E  C O N N E C T E R", color: Colors.white)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
