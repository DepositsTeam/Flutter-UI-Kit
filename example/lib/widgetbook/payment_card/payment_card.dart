import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:deposits_ui_kit_example/widgetbook/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

WidgetbookUseCase paymentCard(BuildContext context) {
  final formKey = GlobalKey<FormBuilderState>();
  FocusNode cardNameNode = FocusNode();
  FocusNode cardNumberNode = FocusNode();
  FocusNode expiryNode = FocusNode();
  FocusNode cvvNode = FocusNode();
  var cardNameController = TextEditingController(text: 'SAMSON ALIGBA');
  var cardNumberController = TextEditingController(text: '5399 **** **** 4589');
  var expiryDateController = TextEditingController(text: '12/12');
  var cvvController = TextEditingController(text: '000');

  return WidgetbookUseCase(
      name: 'DefaultPaymentCard/Basic',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Default Payment Card Info",
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        verticalSpaceMedium,
                        DefaultDepPaymentCard(
                            cardName: cardNameController.text.toUpperCase(),
                            cardNumber: cardNumberController.text,
                            cardCVV: cvvController.text,
                            cardExpiry: expiryDateController.text,
                            cardType: context.knobs.list(
                                label: 'Select Card',
                                description: 'Card Types',
                                initialOption: const Image(
                                  image: AssetImage(
                                      "assets/images/masterCard.png"),
                                ),
                                labelBuilder: (value) {
                                  var val = value as Image;
                                  return getcardImagesLabel(val);
                                },
                                options: cardImages)),
                        verticalSpaceMedium,
                        //card name entry
                        CustomtextField(
                          hint: "Card name",
                          focusNode: cardNameNode,
                          focusedBorderColor: cyan500,
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
                              } else {}
                            });
                          },
                        ),
                        verticalSpaceSmallY,
                        //card name entry
                        CustomtextField(
                          hint: "Card number",
                          focusNode: cardNumberNode,
                          controller: cardNumberController,
                          focusedBorderColor: cyan500,
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
                              } else {}
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
                                  focusedBorderColor: cyan500,
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
                                      } else {}
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
                                  focusedBorderColor: cyan500,
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
                                      } else {}
                                    });
                                  },
                                ),
                              ),
                            ])
                      ]),
                ));
          })));
}

WidgetbookUseCase paymentMainCard(BuildContext context) {
  final formKey = GlobalKey<FormBuilderState>();
  FocusNode cardAmountNode = FocusNode();
  FocusNode cardNameNode = FocusNode();
  FocusNode cardNumberNode = FocusNode();
  FocusNode expiryNode = FocusNode();
  FocusNode cvvNode = FocusNode();
  var cardAmountController = TextEditingController(text: '\$0.00');
  var cardNameController = TextEditingController(text: 'SAMSON ALIGBA');
  var cardNumberController = TextEditingController(text: '5399 5566 3444 4589');
  var expiryDateController = TextEditingController(text: '12/12');
  var cvvController = TextEditingController(text: '000');

  return WidgetbookUseCase(
      name: 'Main PaymentCard/Basic',
      builder: (context) => Scaffold(
          appBar: DepAppbarWidget(
            titleWidget: const DepText(
              text: "Main Payment Card Info",
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        verticalSpaceMedium,
                        DepPaymentCard(
                            cardName: cardNameController.text.toUpperCase(),
                            cardNumber: cardNumberController.text,
                            cardAmount: cardAmountController.text,
                            cardCVV: cvvController.text,
                            cardExpiry: expiryDateController.text,
                            isHideCardInfo: context.knobs.boolean(
                                label: 'Hide card info',
                                description:
                                    'When toggled hides and shows card info',
                                initialValue: false),
                            cardColor: context.knobs.list(
                                label: 'Card Color',
                                description: 'Background color of the Card.',
                                initialOption: gray700,
                                options: cardColorOptions,
                                labelBuilder: ((value) {
                                  return getCardColorLabel(value);
                                })),
                            brand: context.knobs.list<Image>(
                                label: 'Select brand',
                                description: 'List of brands',
                                initialOption: const Image(
                                    image: AssetImage(
                                        "assets/images/brandlogo.png")),
                                labelBuilder: (value) {
                                  return getBrandLabel(value);
                                },
                                options: brandImages),
                            cardType: context.knobs.list<Image>(
                                label: 'Select Card',
                                description: 'Card Types',
                                initialOption: const Image(
                                  image: AssetImage(
                                      "assets/images/masterCard.png"),
                                ),
                                labelBuilder: (value) {
                                  return getcardImagesLabel(value);
                                },
                                options: cardImages)),
                        verticalSpaceMedium,
                        //card amount entry
                        CustomtextField(
                          hint: "Card Ammount",
                          focusNode: cardAmountNode,
                          focusedBorderColor: cyan500,
                          controller: cardAmountController,
                          keyboardType: const TextInputType.numberWithOptions(
                              decimal: true),
                          textInputAction: TextInputAction.next,
                          // validator: FormBuilderValidators.compose([
                          //   FormBuilderValidators.required(
                          //       errorText: requiredEmail),
                          // ]),
                          inputFormatters: [
                            // FilteringTextInputFormatter.allow(
                            //     RegExp(r'[\s\S]*')),
                            CurrencyTextInputFormatter(symbol: "\$")
                          ],
                          onSubmitted: (String? value) => {
                            FocusScope.of(context).requestFocus(cardNameNode)
                          },
                          onChanged: (value) {
                            setState(() {
                              if (value == '\$') {
                                value = '\$0.00';
                              }
                            });
                          },
                        ),
                        verticalSpaceSmallY,
                        //card name entry
                        CustomtextField(
                          hint: "Card name",
                          focusedBorderColor: cyan500,
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
                              } else {}
                            });
                          },
                        ),
                        verticalSpaceSmallY,
                        //card name entry
                        CustomtextField(
                          hint: "Card number",
                          focusedBorderColor: cyan500,
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
                              } else {}
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
                                  focusedBorderColor: cyan500,
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
                                      } else {}
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
                                  focusedBorderColor: cyan500,
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
                                      } else {}
                                    });
                                  },
                                ),
                              ),
                            ])
                      ]),
                ));
          })));
}
