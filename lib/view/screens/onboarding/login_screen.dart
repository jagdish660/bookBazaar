import 'package:bookbazzar/util/dt_colors.dart';
import 'package:bookbazzar/util/dt_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../components/dt_button.dart';
import '../../../components/dt_textfield.dart';
import '../../../util/dt_assets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Image.asset(DTImages.lframe),
            SizedBox(height: screenHeight*0.02,),
            Text('Login',style: AppTextStyles.muliLargeTextStyle.copyWith(
              fontSize: 30,
            ),),
            Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.1, top: screenHeight * 0.03),
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: AppColors.borderColor,
        
                ),
                borderRadius: BorderRadius.circular(40),
              ) ,
              child: DTTextField(
                placeholder: '',
                borderWidth: 0.8,
                borderColor: Colors.transparent,
                width: screenWidth * 0.8,
                borderRadius: 100,
                height: screenHeight * 0.07,
                // controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!value.contains('@')) {
                    return 'Invalid email';
                  }
                  return null; // Return null if validation succeeds
                },
              ),
            ),
        

            Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.1, top: screenHeight * 0.03),
              child: Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.borderColor,

                ),
                borderRadius: BorderRadius.circular(40),
              ) ,
              child: DTTextField(
                placeholder: '',
                borderWidth: 0.8,
                borderColor: Colors.transparent,
                width: screenWidth * 0.8,
                borderRadius: 100,
                height: screenHeight * 0.07,
                // controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  if (!value.contains('@')) {
                    return 'Invalid email';
                  }
                  return null; // Return null if validation succeeds
                },
              ),
            ),
            SizedBox(height: screenHeight*0.04,),
            DTButton(
              onClick: () async {
        
                Get.to(() => const LoginScreen(), transition: Transition.upToDown);
              },
              label: "Login",
              textColor: Colors.white,
              buttonColor: AppColors.primaryColor,
              borderRadius: 40,
              width: screenWidth * 0.6,
              textAlign: TextAlign.center,
            ),
        
          ],
        ),
      ),
    );
  }
}
