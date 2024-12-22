import 'package:firebase_flutter/src/features/authentication/screens/forgetpassword/forgetpassword_option/forget_password_btn.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class ForgetPasswordScreen {
  
 static  Future<dynamic> forgetPasswordContainer(BuildContext context) {
    return showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    builder: (context) => Container(
                          padding: EdgeInsets.all(defaultSizes),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(forgetPassWordTitle,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium),
                              Text(forgetPassWordSubTitle,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              SizedBox(
                                height: 30,
                              ),
                              ForgetPasswordBtnWidget(
                                btnIcon: Icons.email_outlined,
                                title: emailText,
                                subTitle: resetPasswordViaEmail,
                                onTap: () {},
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ForgetPasswordBtnWidget(
                                btnIcon: Icons.mobile_friendly_rounded,
                                title: phoneNumber,
                                subTitle: restPasswordviaPhone,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ));
  }
}
