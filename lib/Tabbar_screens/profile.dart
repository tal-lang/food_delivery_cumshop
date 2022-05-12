import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/details_screen/add_social_accounts.dart';
import 'package:food_app/details_screen/change_password_screen.dart';
import 'package:food_app/details_screen/payments_screen.dart';
import 'package:food_app/details_screen/profile_settings_details_screen.dart';
import 'package:food_app/signin_register_screens/find_resturent_near_you.dart';
import 'package:food_app/signin_register_screens/login_screen.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,

           children: [

            Text(
            'Account Settings',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold,fontSize: 20),
          ),
             SizedBox(height: 10,),
             Text( 'Update your settings like notifications, \npayments, profile edit etc.',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),),
             SizedBox(height: 15,),
             Container(
               child: ListTile(
                 onTap: (){
                   Navigator.push (
                     context,
                     MaterialPageRoute(
                         builder: (BuildContext context) =>
                             profile_details_screen()),

                   );
                 } ,
                leading: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Icon(Icons.person,size: 20,color: Colors.orange
                  ),
                ),
                 subtitle: Text( 'update Details',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),) ,
                 title:             Text( 'Profile Information',style: TextStyle(color:    Colors.black, fontWeight: FontWeight.w400 ,fontSize: 16,),),
                 trailing: Icon(Icons. arrow_forward_ios_outlined),

               ),
             ),
             SizedBox(height: 10,),
             Container(
               child: ListTile(
                 onTap: (){
                   Navigator.push (
                     context,
                     MaterialPageRoute(
                         builder: (BuildContext context) =>
                             change_password()),

                   );
                 } ,
                 leading: Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Icon(Icons.lock,size: 20,color: Colors.orange ),
                 ),
                 subtitle: Text( 'Change your password',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),) ,
                 title:             Text( 'Change Password',style: TextStyle(color:    Colors.black, fontWeight: FontWeight.w400 ,fontSize: 16,),),
                 trailing: Icon(Icons. arrow_forward_ios_outlined),

               ),
             ),
             SizedBox(height: 10,),
             Container(
               child: ListTile(
                 onTap: (){
                   Navigator.push (
                     context,
                     MaterialPageRoute(
                         builder: (BuildContext context) =>
                             payments_method_screen()),

                   );
                 } ,
                 leading: Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Icon(Icons. account_balance_wallet,size: 20,color: Colors.orange ),
                 ),
                 subtitle: Text( 'Add your credit & debit cards',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),) ,
                 title:             Text( 'Payment Methods',style: TextStyle(color:    Colors.black, fontWeight: FontWeight.w400 ,fontSize: 16,),),
                 trailing: Icon(Icons. arrow_forward_ios_outlined),

               ),
             ),
             SizedBox(height: 10,),
             Container(
               child: ListTile(
                 onTap: (){
                   Navigator.push (
                     context,
                     MaterialPageRoute(
                         builder: (BuildContext context) =>
                             find_resturent()),

                   );
                 } ,
                 leading: Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Icon(Icons. add_location,size: 20,color: Colors.orange, ),
                 ),
                 subtitle: Text( 'Add or remove your delivery locations',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),) ,
                 title:             Text( 'Locations',style: TextStyle(color:    Colors.black, fontWeight: FontWeight.w400 ,fontSize: 16,),),
                 trailing: Icon(Icons. arrow_forward_ios_outlined),

               ),
             ),
             SizedBox(height: 10,),
             Container(
               child: ListTile(

                 leading: Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Icon(Icons.star,size: 20,color: Colors.orange, ),
                 ),
                 subtitle: Text( 'Rate us playstore, appstor',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),) ,
                 title:Text( 'Rate Us',style: TextStyle(color:    Colors.black, fontWeight: FontWeight.w400 ,fontSize: 16,),),
                 trailing: Icon(Icons. arrow_forward_ios_outlined),

               ),
             ),

             SizedBox(height: 10,),
             Container(
               child: ListTile(
                 onTap: (){
                   Navigator.push (
                     context,
                     MaterialPageRoute(
                         builder: (BuildContext context) =>
                             add_social_account_screen()),

                   );
                 } ,
                 leading: Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Icon( Icons.facebook,size: 20,color: Colors.blue, ),
                 ),
                 subtitle: Text( 'Add Facebook, Twitter etc ',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),) ,
                 title:Text( 'Add Social Account',style: TextStyle(color:    Colors.black, fontWeight: FontWeight.w400 ,fontSize: 16,),),
                 trailing: Icon(Icons. arrow_forward_ios_outlined),

               ),
             ),
             SizedBox(height: 10,),
             Container(
               child: ListTile(
                 onTap: () {
                   Widget cancelButton = TextButton(
                     child: Text("Cancel",style: TextStyle(color: Color.fromRGBO(252, 186, 24, 1)),),
                     onPressed: () {
                       Navigator.pop(context);
                     },
                   );
                   Widget continueButton = TextButton(
                     child: Text("Sign Out"),
                     onPressed: () {
                       Navigator.pushAndRemoveUntil(
                         context,
                         MaterialPageRoute(
                             builder: (BuildContext context) =>
                                 login_screen()),
                             (route) => false,
                       );
                     },
                   );

                   // set up the AlertDialog
                   AlertDialog alert = AlertDialog(
                     title: Text("Logout"),
                     content: Text("Do you want to Logout?"),
                     actions: [
                       cancelButton,
                       // continueButton,
                       Container(
                         height: 40,
                         width: 110,
                         child: MaterialButton(
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(15)),
                           color: Color.fromRGBO(252, 186, 24, 1),
                           child: Text(
                             'Logout',
                             style: TextStyle(
                               fontFamily: 'Roboto',
                               color: Colors.white,
                             ),
                           ),
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => login_screen()),
                             );
                           },
                         ),
                       ),
                     ],
                   );

                   // show the dialog
                   showDialog(
                     context: context,
                     builder: (BuildContext context) {
                       return alert;
                     },
                   );
                 },
                 leading: Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Icon(Icons.logout,size: 20,  ),
                 ),
                  title: Text( 'Logout',style: TextStyle(color: Color.fromRGBO(134, 134, 134, 1),fontSize: 16,fontWeight: FontWeight.w400),) ,
                 trailing: Icon(Icons. arrow_forward_ios_outlined),

               ),
             ),
           ],
          ),
        ),
      ),
    );
  }
}
