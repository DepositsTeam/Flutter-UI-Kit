import 'package:deposits_ui_kit/src/values/dep_formatters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DepPaymentCard extends StatelessWidget {
  final String cardName, cardNumber, cardExpiry, cardCVV;
  final Widget cardType;
  const DepPaymentCard({super.key, 
  required this.cardName,
    required this.cardNumber,
    required this.cardExpiry,
    required this.cardCVV,
    required this.cardType
  });

  @override
  Widget build(BuildContext context) {
    return //card
        Container(
      width: 336,
      height: 215.04,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.93, -0.38),
          end: Alignment(-0.93, 0.38),
          colors: [Color(0xFF0B258F), Color(0xFF2743B4)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 247,
            top: 168,
            right: 17,
            child: SizedBox(
                width: 85,
                height: 30,
                child: cardType),
          ),
          Positioned(
            left: 17,
            top: 129,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardNumber,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'OcrB',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EXP: ${formatExpiryDate(cardExpiry)}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'OcrB',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'CVV: ${formatCVV(cardCVV)}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'OcrB',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  cardName.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            left: 17,
            top: 65,
            child: SizedBox(
              width: 44.30,
              height: 40,
              child: Image(image: AssetImage("assets/images/sim.png")),
            ),
          ),
          const Positioned(
              left: 17,
              top: 24,
              child: Image(image: AssetImage("assets/images/renapay.png")))
        ],
      ),
    );
  }
}


// class CardMonthInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     var newText = newValue.text;

//     if (newValue.selection.baseOffset == 0) {
//       return newValue;
//     }

//     var buffer = new StringBuffer();
//     for (int i = 0; i < newText.length; i++) {
//       buffer.write(newText[i]);
//       var nonZeroIndex = i + 1;
//       if (nonZeroIndex % 2 == 0 && nonZeroIndex != newText.length) {
//         buffer.write('/');
//       }
//     }

//     var string = buffer.toString();
//     return newValue.copyWith(
//         text: string,
//         selection: new TextSelection.collapsed(offset: string.length));
//   }
// }

// class CardNumberInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     var text = newValue.text;

//     if (newValue.selection.baseOffset == 0) {
//       return newValue;
//     }

//     var buffer = new StringBuffer();
//     for (int i = 0; i < text.length; i++) {
//       buffer.write(text[i]);
//       var nonZeroIndex = i + 1;
//       if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
//         buffer.write('  '); // Add double spaces.
//       }
//     }

//     var string = buffer.toString();
//     return newValue.copyWith(
//         text: string,
//         selection: new TextSelection.collapsed(offset: string.length));
//   }
// }

