import 'package:flutter/material.dart';
import 'package:multi_sensory_enhancement_program/app/view/common/child/crm_carousel_slider.dart';
class CRMMainContent extends StatelessWidget {
  const CRMMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                  children: [
                    const Text(
                        '오늘의 목표'
                    ),
                    Image.asset('images/01/answer.png', width: MediaQuery.of(context).size.width * 0.2, height: MediaQuery.of(context).size.width * 0.15),
                    const Text(
                        '크로노 사우루스'
                    )
                  ]
              ),
              const CRM_CarouselSlider(),
            ],
          )
      ),
    );
  }

}