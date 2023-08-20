import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,title: "electricity company",home: Home(),
      theme: new ThemeData(scaffoldBackgroundColor: Colors.deepOrange),);
  }
}

class Home extends StatelessWidget{
 TextEditingController n1=TextEditingController();
 TextEditingController n2=TextEditingController();
 TextEditingController n3=TextEditingController();
 TextEditingController n4=TextEditingController();
 TextEditingController n5=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black,title: Container(child: Row(children: [

      Icon(Icons.flash_on_sharp,size: 30,color: Colors.amberAccent,)
,Container(width: 25,height: 10,),

      Text("Electricity Company",style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),),

      Container(width: 25,height: 10,),

      Icon(Icons.electrical_services_outlined,size: 30,color: Colors.amberAccent,)



    ],),),),

    body: ListView(children: [

      Text("The previous reading",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

      ,TextField(controller: n1,
      decoration: InputDecoration(
        fillColor: Colors.white,filled: true,
        hintText: ""
        ,labelText: "previous reading"
,prefixIcon: Icon(Icons.keyboard)
          ,border: OutlineInputBorder(),

      ),
      )

,Divider(),

Text("The Current reading",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

,TextField(controller: n2,
     decoration: InputDecoration(
       hintText: ""
           ,labelText: "Current reading"
         ,prefixIcon: Icon(Icons.keyboard)
         ,fillColor: Colors.white,filled: true
         ,border: OutlineInputBorder()
     ),
      )

,Divider()

      ,Text("Consumed kilowatt",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
,TextField(controller: n3,
   decoration: InputDecoration(
       fillColor: Colors.white,filled: true,
     border: OutlineInputBorder()

   ),
      )

  , RaisedButton(child: Text("count"),

   onPressed:(){
    int x =int.parse(n1.text);
    int y =int.parse(n2.text);
    int z = y-x ;
    n3.text=z.toString();
   })

, Text("Slide Tybe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)


      , TextField(controller: n4,
     decoration: InputDecoration(
         fillColor: Colors.white,filled: true,
       border: OutlineInputBorder()
     ),
      )

,RaisedButton(child: Text("Type")

          ,onPressed:(){
            int x =int.parse(n1.text);
            int y =int.parse(n2.text);
            int z = y-x ;
            if (z>0&&z<=50) {
              n4.text = "الشريحة الاولى";
            }
          else  if (z >= 51 && z <= 100) {
              n4.text = "الشريحة الثانية";
            }
          else  if (z >= 101 && z <= 200) {
              n4.text = "الشريحة الثالثة";
            }
          else  if (z >= 201 && z <= 350) {
              n4.text = "الشريحة الرابعة";
            }
          else  if (z >= 351 && z <= 650) {
              n4.text = "الشريحة الخامسة";
            }
          else  if (z >= 651 && z <= 1000) {
              n4.text = "الشريحة السادسة";
            }
          else  if (z > 1000) {
              n4.text = "الشريحة السابعة";
            }


          })


,Text("Price",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

,TextField(controller: n5,
      decoration: InputDecoration(
fillColor: Colors.white,filled: true,
        border: OutlineInputBorder()
      ),
      )


,RaisedButton(child: Text("count price"),

        onPressed:(){

          int x =int.parse(n1.text);
          int y =int.parse(n2.text);
          int z = y-x ;

          if (z>0&&z<=50) {
            n5.text = ((z*0.48)+1).toString();
          }
          else  if (z >= 51 && z <= 100) {
            n5.text = ((z*0.58)+2).toString();
          }
          else  if (z >= 101 && z <= 200) {
            n5.text = ((z*0.77)+6).toString();
          }
          else  if (z >= 201 && z <= 350) {
            n5.text = ((z*1.06)+11).toString();
          }
          else  if (z >= 351 && z <= 650) {
            n5.text = ((z*1.28)+15).toString();
          }
          else  if (z >= 651 && z <= 1000) {
            n5.text = ((z*1.28)+25).toString();
          }
          else  if (z > 1000) {
            n5.text = ((z*1.45)+40).toString();
          }












        })












    ],)


    );
  }

}