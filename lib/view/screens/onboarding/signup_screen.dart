import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../components/component_wrapper.dart';
import '../../../components/dt_button.dart';
import '../../../components/dt_textfield.dart';
import '../../../util/dt_assets.dart';
import '../../../util/dt_colors.dart';
import '../../../util/dt_styles.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        DTImages.bg,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.081,
                        right: screenWidth * 0.082,
                        top: screenHeight * 0.2),
                    child: ComponentWrapper(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border: Border.all(color: Color(0xffEEEEEE), width: 1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.04, top: screenHeight * 0.01),
                              child: DTTextField(
                                placeholder: 'Username',
                                hintStyle: TextStyle(color: Color(0xff808389),),
                                keyboardType: TextInputType.emailAddress,

                                width: screenWidth,
                                height: 47,
                                borderWidth: 1,
                                borderColor: Colors.transparent,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border: Border.all(color: Color(0xffEEEEEE), width: 1),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.04, top: screenHeight * 0.01),
                              child: DTTextField(
                                placeholder: 'Email Address',
                                hintStyle: TextStyle(color: Color(0xff808389),),
                                keyboardType: TextInputType.emailAddress,

                                width: screenWidth,
                                height: 47,
                                borderWidth: 1,
                                borderColor: Colors.transparent,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border:
                              Border.all(color: Color(0xffEEEEEE), width: 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.04, top: screenHeight * 0.01),
                              child: DTTextField(
                                placeholder: 'Password',

                                keyboardType: TextInputType.emailAddress,
                                hintStyle: TextStyle(color: Color(0xff808389),),

                                width: screenWidth,
                                height: 47,
                                borderWidth: 1,
                                borderColor: Colors.transparent,
                                suffixIcon: Icons.visibility_off,
                                suffixIconColor: AppColors.labelGreyText,
                                obscureText: true,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              border:
                              Border.all(color: Color(0xffEEEEEE), width: 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(0),
                                  topRight: Radius.circular(0)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.04, top: screenHeight * 0.01),
                              child: DTTextField(
                                placeholder: 'Confirm Password',
                                keyboardType: TextInputType.emailAddress,
                                hintStyle: TextStyle(
                                  color: Color(0xff808389),
                                ),
                                width: screenWidth,
                                height: 47,
                                borderWidth: 1,
                                borderColor: Colors.transparent,
                                suffixIcon: Icons.visibility,
                                suffixIconColor: AppColors.labelGreyText,
                                obscureText: true,
                              ),
                            ),
                          ),


                          Container(
                            margin: EdgeInsets.only(
                                left: screenWidth * 0.09,
                                right: screenWidth * 0.09,
                                top: screenHeight*0.01,bottom: screenHeight*0.02),
                            child: DTButton(
                              onClick: () {},
                              label: 'Sign up',
                              buttonColor: AppColors.primaryColor,
                              textAlign: TextAlign.center,
                              height: screenHeight * 0.07,
                              width: screenWidth * 0.7,
                              borderRadius: 30,
                              textSize: 14,
                              textFont: FontWeight.w700,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: screenWidth*0.09,right: screenWidth*0.09,bottom: 15),
                            child: Text('By signing up, up agree to the Privacy Policy and Terms Of Service ',style: AppTextStyles.muliTextStyle.copyWith(
                              color: AppColors.labelGreyText,
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                    ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}