import 'package:deposits_ui_kit/deposits_ui_kit.dart';
import 'package:flutter/material.dart';

class DepPaymentCard extends StatelessWidget {
  final String cardName, cardAmount ,cardNumber, cardExpiry, cardCVV, brand;
  final Widget cardType;
  final bool isHideCardInfo;
  final Color cardColor;
  const DepPaymentCard(
      {super.key,
      required this.cardName,
      required this.cardAmount,
      required this.cardNumber,
      required this.cardExpiry,
      required this.cardCVV,
      required this.cardType,
      required this.cardColor,
      required this.isHideCardInfo,
      required this.brand});

  @override
  Widget build(BuildContext context) {
    return //card
        Container(
      // width: 336,
      height: 215.04,
      decoration: ShapeDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.93, -0.38),
          end: const Alignment(-0.93, 0.38),
          colors: [cardColor, cardColor],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 17,
            right: 17,
            top: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DepText(
                      text: 'Card number',
                      txtColor: Color(0xFF8C97A7),
                      font: 14,
                      fntweight: FontWeight.w400,
                    ),
                    Text(
                      isHideCardInfo == true
                          ? formatCardNumber(cardNumber)
                          : cardNumber,
                      style: TextStyle(
                        color:
                            cardColor == gray700 ? Colors.white : Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                horizontalSpaceMedium,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DepText(
                      text: 'EXP',
                      txtColor: Color(0xFF8C97A7),
                      font: 14,
                      fntweight: FontWeight.w400,
                    ),
                    Text(
                      isHideCardInfo == true
                          ? formatExpiryDate(cardExpiry)
                          : cardExpiry,
                      style: TextStyle(
                        color:
                            cardColor == gray700 ? Colors.white : Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                horizontalSpaceMedium,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const DepText(
                      text: 'CVV',
                      txtColor: Color(0xFF8C97A7),
                      font: 14,
                      fntweight: FontWeight.w400,
                    ),
                    Text(
                      isHideCardInfo == true ? formatCVV(cardCVV) : cardCVV,
                      style: TextStyle(
                        color:
                            cardColor == gray700 ? Colors.white : Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                horizontalSpaceMedium,
                Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        width: 85,
                        child: cardType)),
              ],
            ),
          ),
          Positioned(
            left: 17,
            top: 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isHideCardInfo == true ? '\$****' : cardAmount,
                  style: TextStyle(
                    color: cardColor == gray700 ? Colors.white : Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Available balance',
                  style: TextStyle(
                    color: Color(0xFF8C97A7),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 17,
            top: 24,
            child: Text(
              cardName.toUpperCase(),
              style: const TextStyle(
                color: Color(0xFF8C97A7),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            top: 24,
            right: 17,
            child: SizedBox(
                width: 85,
                height: 30,
                child: Image(
                    color: (brand.contains('brandlogo') && cardColor != gray700)
                        ? gray700
                        : null,
                    image: AssetImage(brand))),
          ),
        ],
      ),
    );
  }
}

class DefaultDepPaymentCard extends StatelessWidget {
  final String cardName, cardNumber, cardExpiry, cardCVV;
  final Widget cardType;
  const DefaultDepPaymentCard(
      {super.key,
      required this.cardName,
      required this.cardNumber,
      required this.cardExpiry,
      required this.cardCVV,
      required this.cardType});

  @override
  Widget build(BuildContext context) {
    return //card
        Container(
      // width: 336,
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
            child: SizedBox(width: 85, height: 30, child: cardType),
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
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'CVV: ${formatCVV(cardCVV)}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
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
