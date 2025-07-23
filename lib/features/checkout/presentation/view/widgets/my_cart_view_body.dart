import 'package:chechout_app/core/utils/style.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/cart_info_item.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/total_price.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 18,),
          Expanded(child: Image.asset('assets/images/basket.png')),
          SizedBox(height: 25,),
          OrderInfoItem(title: 'Order Subtota',value: r'$42.97'),
           SizedBox(height: 3,),
           OrderInfoItem(title: 'Discount',value: r'$0'),
            SizedBox(height: 3,),
           OrderInfoItem(title: 'Shipping',value: r'$8'),
           Divider(thickness: 2,
           height: 34,
           color: Color(0xffC7C7C7),),
           TolalPrice(title: 'Total', value: r'$50.97'),
           SizedBox(height: 16,),
           ElevatedButton(
            onPressed: (){}, child: 
           Text('Complete Payment',style: Styles.style22,)
           ),
        ],
      ),
    );
  }
}

