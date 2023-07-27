import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase PaymentCard(BuildContext context) {
  final formKey = GlobalKey<FormBuilderState>();
  bool ready = false;
  FocusNode cardNameNode = FocusNode();
  FocusNode cardNumberNode = FocusNode();
  FocusNode expiryNode = FocusNode();
  FocusNode cvvNode = FocusNode();
  var cardNameController = TextEditingController(text: 'SAMSON ALIGBA');
  var cardNumberController = TextEditingController(text: '5399 **** **** 4589');
  var expiryDateController = TextEditingController(text: '12/12');
  var cvvController = TextEditingController(text: '000');

  return WidgetbookUseCase(
      name: 'PaymentCard/Basic',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Payment Card Info",
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
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        verticalSpaceMedium,
                        DepPaymentCard(
                            cardName: cardNameController.text.toUpperCase(),
                            cardNumber: cardNumberController.text,
                            cardCVV: cvvController.text,
                            cardExpiry: expiryDateController.text,
                            cardType: context.knobs.options<Image>(
                                label: 'Select Card',
                                description: 'Card Types',
                                options: const [
                                  Option(
                                    label: 'Master Card',
                                    value: Image(
                                        image: AssetImage(
                                            "assets/images/masterCard.png")),
                                  ),
                                  Option(
                                    label: 'Visa Card',
                                    value: Image(
                                        image: AssetImage(
                                            "assets/images/visaCard.png")),
                                  ),
                                  Option(
                                    label: 'American Express Card',
                                    value: Image(
                                        image: AssetImage(
                                            "assets/images/expressCard.png")),
                                  ),
                                  Option(
                                    label: 'JCB Card',
                                    value: Image(
                                        image: AssetImage(
                                            "assets/images/jcbCard.png")),
                                  ),
                                  Option(
                                    label: 'Verve Card',
                                    value: Image(
                                        image: AssetImage(
                                            "assets/images/verveCard.png")),
                                  ),
                                ])),
                        verticalSpaceMedium,
                        //card name entry
                        CustomtextField(
                          hint: "Card name",
                          focusNode: cardNameNode,
                          controller: cardNameController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          // validator: FormBuilderValidators.compose([
                          //   FormBuilderValidators.required(
                          //       errorText: requiredEmail),
                          // ]),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[\s\S]*')),
                          ],
                          onSubmitted: (String? value) => {
                            FocusScope.of(context).requestFocus(cardNumberNode)
                          },
                          onChanged: (value) {
                            setState(() {
                              if (cardNameController.text.isNotEmpty &&
                                  cardNumberController.text.isNotEmpty &&
                                  cvvController.text.isNotEmpty &&
                                  expiryDateController.text.isNotEmpty) {
                                ready = true;
                              } else {
                                ready = false;
                              }
                            });
                          },
                        ),
                        verticalSpaceSmallY,
                        //card name entry
                        CustomtextField(
                          hint: "Card number",
                          focusNode: cardNumberNode,
                          controller: cardNumberController,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: requiredEmail),
                          ]),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(16),
                            CardNumberInputFormatter()
                          ],
                          onSubmitted: (String? value) =>
                              {FocusScope.of(context).requestFocus(expiryNode)},
                          onChanged: (value) {
                            setState(() {
                              if (cardNameController.text.isNotEmpty &&
                                  cardNumberController.text.isNotEmpty &&
                                  cvvController.text.isNotEmpty &&
                                  expiryDateController.text.isNotEmpty) {
                                ready = true;
                              } else {
                                ready = false;
                              }
                            });
                          },
                        ),
                        verticalSpaceSmallY,
                        //card epiry and cvv entry
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //expiry
                              Expanded(
                                child: CustomtextField(
                                  hint: "Card expiry",
                                  focusNode: expiryNode,
                                  controller: expiryDateController,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                        errorText: requiredEmail),
                                  ]),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(4),
                                    CardMonthInputFormatter()
                                  ],
                                  onSubmitted: (String? value) => {
                                    FocusScope.of(context).requestFocus(cvvNode)
                                  },
                                  onChanged: (value) {
                                    setState(() {
                                      if (cardNameController.text.isNotEmpty &&
                                          cardNumberController
                                              .text.isNotEmpty &&
                                          cvvController.text.isNotEmpty &&
                                          expiryDateController
                                              .text.isNotEmpty) {
                                        ready = true;
                                      } else {
                                        ready = false;
                                      }
                                    });
                                  },
                                ),
                              ),
                              horizontalSpaceMedium,
                              //cvv
                              Expanded(
                                child: CustomtextField(
                                  hint: "Card cvv",
                                  focusNode: cvvNode,
                                  controller: cvvController,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                        errorText: requiredEmail),
                                  ]),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(3),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      if (cardNameController.text.isNotEmpty &&
                                          cardNumberController
                                              .text.isNotEmpty &&
                                          cvvController.text.isNotEmpty &&
                                          expiryDateController
                                              .text.isNotEmpty) {
                                        ready = true;
                                      } else {
                                        ready = false;
                                      }
                                    });
                                  },
                                ),
                              ),
                            ])
                      ]),
                ));
          })));
}
