import 'package:chechout_app/core/utils/style.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/payment_Item_Info.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/total_price.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      clipBehavior: Clip.none,
      children: [
        
       Padding(
        padding: const EdgeInsets.only(left: 32,right: 32,top: 60,bottom: 40),
        child: Container(
          width: double.infinity,
          
          decoration: ShapeDecoration(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Color(0xFFD9D9D9)),

          child: Padding(
            padding:  EdgeInsets.only(top:50+16,left: 22,right: 22),
            child: Column(
              children: [
                Text('Thank you!',
                textAlign: TextAlign.center,
                style: Styles.style25,),
              
              Text('Your transaction was successful',
              textAlign: TextAlign.center,
              ),
              
              SizedBox(height: 42,),  
              PaymentItemInfo(title: 'Date',value: '01/24/2023',),
              SizedBox(height: 20,),
              PaymentItemInfo(title: 'Time',value: '10:15 AM',),
              SizedBox(height: 20,),
              PaymentItemInfo(title: 'To',value: 'Sam Louis',),
              Divider(
                height: 60,
                thickness: 2,
              ),
              TolalPrice(title: 'Total',value: r'$50.97',),
                  SizedBox(height: 20,),
                Container(
                  width: 305,
                  height: 73,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 8,),
                        Image.asset('assets/images/logo.png'),
                    
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text('Credit Card',style: Styles.style18,),
                              Text('Mastercard **78',),
                          
                            ],
                          ),
                        ),
                      ]
                    
                      
                    ),

                     
                  ]
                  
                ),      
                ),


              Spacer(),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/parcode.png',
                    ),
                      Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: (){}, child: Text('PAID',style: 
                    TextStyle(color: Colors.white),))
                  ],
                ),
                SizedBox(
                    height:
                        (MediaQuery.sizeOf(context).height * .2 + 20) / 2 - 40),
                      
              
                    
                    
                  
               
            

           

               
             
              ],
            ),
          ),    
        ),

      ),


      Positioned(
        bottom: MediaQuery.sizeOf(context).height * 0.2 +20,
        left: 20+8,
        right: 20+8,
        
        child: Row(
          children: 
            List.generate(30, (index)=>
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: Container(
                  color: Color(0xffB8B8B8),
                  height: 2,
                  
                ),
              ),
            )),
          
        ),
      ),
       Positioned(
        left: 10,
        bottom: MediaQuery.sizeOf(context).height * 0.2 ,
        child:CircleAvatar(
        backgroundColor: Colors.white,
      )
      ),
      Positioned(
        right: 10,
        bottom: MediaQuery.sizeOf(context).height * 0.2 ,
        child:CircleAvatar(
        backgroundColor: Colors.white,
      )
      ),
      Positioned(
        top: 20,
        left: 0,
        right: 0,
        child: CircleAvatar(
          radius: 45,
           backgroundColor: Color(0xFFD9D9D9),
           child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.green,
            child: Icon(
              size: 40,
              Icons.check,
              color: Colors.white,
            ),
           ),
        ),
      )
      ]
    );
  }
}
