import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase basicTextInput(BuildContext context) {
  bool passwordVisible = true;
  bool emailHasError = false;
  bool passwordHasError = false;
  bool ready = false;
  final formKey = GlobalKey<FormBuilderState>();
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  return WidgetbookUseCase(
      name: 'TextInput/Basic',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Basic Text Input",
              txtColor: Colors.white,
              font: 18,
            ),
            addBackButton: false,
            addCloseButton: false,
            backgroundColor: primaryColor,
          ),
          body: StatefulBuilder(builder: (context, setState) {
            return FormBuilder(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomtextField(
                        controller: emailController,
                        focusNode: emailNode,
                        hint: 'Email address',
                        hasError: emailHasError,
                        focusedBorderColor: cyan500,
                        inputFormatters: [
                          AtDotTextInputFormatter(),
                        ],
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(
                              errorText: requiredEmail),
                          FormBuilderValidators.email(errorText: invalidEmail),
                        ]),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        onSubmitted: (String? value) =>
                            {FocusScope.of(context).requestFocus(passwordNode)},
                        onChanged: (value) {
                          setState(() {
                            if (emailController.text.isNotEmpty &&
                                passwordController.text.isNotEmpty) {
                              ready = true;
                            } else {
                              ready = false;
                            }
                          });
                        },
                      ),
                      verticalSpaceSmallY,
                      CustomtextField(
                        controller: passwordController,
                        focusNode: passwordNode,
                        hint: 'Password',
                        hasError: passwordHasError,
                        focusedBorderColor: cyan500,
                        obscureText: passwordVisible,
                        maxLines: 1,
                        validator: FormBuilderValidators.required(),
                        onChanged: (value) {
                          setState(() {
                            if (emailController.text.isNotEmpty &&
                                passwordController.text.isNotEmpty) {
                              ready = true;
                            } else {
                              ready = false;
                            }
                          });
                        },
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.send,
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible == true
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: gray300,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                      ),
                      verticalSpaceSmallY,
                      DepButton(
                        buttonColor: ready ? cyan700 : cyan300,
                        minWidth: double.infinity,
                        // isBusy: ready,
                        onPressed: () {
                          setState(() {
                            if (formKey.currentState!.validate()) {
                              emailHasError = false;
                              passwordHasError = false;
                            } else {
                              debugPrint("validation failed");
                              emailHasError = true;
                              passwordHasError = true;
                            }
                          });
                        },
                        title: 'Login',
                        textColor: ready ? black : cyan200,
                      ),
                      verticalSpaceSmallY,
                    ],
                  ),
                ));
          })));
}
