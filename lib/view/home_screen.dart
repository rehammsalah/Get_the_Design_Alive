import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    FocusNode myFocusNode = new FocusNode();
    SystemChrome.setEnabledSystemUIOverlays([]);

    return  Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.grey[300],
        title:Center(child: Text("Pet Market",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'Balsam',),)) ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          
          child: Column(

            children: [
              SizedBox(height: 5,),
              Container(
                height: 40,
                child: TextFormField(
                  cursorColor: Colors.amber,
                  style: TextStyle(color: Colors.grey),
                  decoration: InputDecoration(


                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus ? Colors.grey :Colors.grey
                    ),
                    label: Center(child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text("Search by pet type",style:TextStyle(fontFamily: 'Balsam',)),
                    )),
                    //labelText: "Search by pet type",
                   filled: true,
                    fillColor: Colors.grey[300],
                    prefixIcon: Icon(Icons.search,color: Colors.amber),
                    enabledBorder: OutlineInputBorder(

                      borderSide: BorderSide(

                        color: Color(300)
                      ),
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    focusedBorder:OutlineInputBorder(

                      borderSide: BorderSide(
                          color: Color(300)
                      ),
                        borderRadius: BorderRadius.circular(30.0))
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Expanded(
                child: Container(
                  color: Colors.grey[200],
                  child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                          itemBuilder: (context,index) => item(petList[index].img!,petList[index].category!,petList[index].pet!,petList[index].love!),
                          separatorBuilder: (context,index) => SizedBox(height: 10,),
                          itemCount: 10
                      ),
                    ),

                ),
              )
            ],
          ),
        ),
      ),


    );
  }
}
Widget item (String img,String category,String pet,int love){
  return Stack(
    children: [
      Container(
       height: 120,
       width: double.infinity,

       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.all(Radius.circular(20))
       )
     ),
      Row(
        
        children: [
          Container(
            padding: EdgeInsets.only(top: 10,left: 10),
            width: 150,
            height: 110,
            child: Image(
                image: NetworkImage("${img}")
            ),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Padding(
                padding:  EdgeInsets.only(bottom:10),
                child: Text("${category}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Balsam',),),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom:15),
                child: Text("${pet}",style: TextStyle(color: Colors.grey,fontFamily: 'Balsam',),),
              ),
              Row(
               children: [
                 Icon(Icons.pets,color: Colors.orange,),
                 SizedBox(width: 5,),
                 Text("Pet Love: ${love}",style: TextStyle(color: Colors.orange,fontFamily: 'Balsam',),)
               ],
             )
            ],
            
          )
        ],
      )

    ],
  );

}
class Pet{
  String? pet;
  String? category;
  int? love;
  String? img;
  Pet(

      this.pet,
      this.category,
      this.love,
      this.img
      );






}
List<Pet> petList = [
  Pet(
  "Dog",
  "Golden",
  20,
  'https://drive.google.com/uc?export=view&id=1SVXNgYjWidATdPpPfswlWtS31DnhjB-2'
  ),
  Pet(
  "Lablador",
  "Golden",
  18,
  "https://drive.google.com/uc?export=view&id=152WsHjSIgQUy0gS_WQEo3mWOSMK8v1kM"
  ),
  Pet(
  "Dog",
  "Cardigan",
  12,
  "https://drive.google.com/uc?export=view&id=1fHoNz-wywIk_ta4RIJzXm7yLrObyKDty"
  ),
  Pet(
  "Cat",
  "Street Cat",
  17,
  "https://drive.google.com/uc?export=view&id=1SL7ZirhhuTpgk7wRe_t0vB_3xD9iqCGm"
  ),
  Pet(
  "Cat",
  "White Cat",
  19,
  "https://drive.google.com/uc?export=view&id=1C_S4qQ4wck3LasJ1Bs5Lz8yhwN60SmTH"
  ),
  Pet(
  "Cat",
  "Kitten",
  18,
  "https://drive.google.com/uc?export=view&id=1qQILdlJ3gtm_0VBzmSoqgTbisVZ-7kr9"
  ),
  Pet(
  "Bird",
  "House Bird",
  15,
  "https://drive.google.com/uc?export=view&id=1LbUWy1JxxkSGSd4cu4dMBK5ChilbFud8"
  ),
  Pet(
  "Bird",
  "Parrot",
  14,
  "https://drive.google.com/uc?export=view&id=1B9eAFq_9D75eXtn0BJM6gtq811eby6QN"
  ),
  Pet(
  "Bird",
  "Pink Bird",
  15,
  "https://drive.google.com/uc?export=view&id=1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah"
  ),
  Pet(
  "Bird",
  "Talking Parrot",
  17,
  "https://drive.google.com/uc?export=view&id=1Sg8plSKxYt1kRQn_DH_OdvHiE2FoeQah"
  ),
  Pet(
  "Rat",
  "Hamster",
  9,
  "https://drive.google.com/uc?export=view&id=11tVuPyyv23mByiFNHrJRuE55gyhMrGA2"
  ),
  Pet(
  "Rabbit",
  "Brown Rabbit",
  16,
  "https://drive.google.com/uc?export=view&id=1huzYq6qlL4BiFzXqD7SuMYM67J5Ea0bV"
  ),
  Pet(
  "Rabbit",
  "Gray Rabbit",
  17,
  "https://drive.google.com/uc?export=view&id=1lxI-yXMPIp2nz2MLc7duJ5Sw6lrA-AsJ"
  ),
];
