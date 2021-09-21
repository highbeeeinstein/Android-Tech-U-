// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Image_slider extends StatefulWidget {
  const Image_slider({ Key? key }) : super(key: key);

  @override
  _Image_sliderState createState() => _Image_sliderState();
}

class _Image_sliderState extends State<Image_slider> {
  final images=[
    'assets/background.jpg',
    'assets/logo_login.png',
    'assets/slider_3.jfif',
    'assets/slider_4.jfif',
    'assets/slider_2.jfif',
    'assets/slider.jfif',
    'assets/slider_5.jfif',
    'assets/slider_6.jfif',
    'assets/download.jfif',

  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CarouselSlider.builder(
              itemCount: images.length,
               itemBuilder: (context, index, realIndex){
                  final image = images[index];
                  return buildimage(image, index);
               },
               options: CarouselOptions(
                 height: 400,
                 autoPlay: true,
                 autoPlayInterval: Duration(seconds: 2),
                 viewportFraction: 1,
                 )
               ),
        ),
         SizedBox(
          height: 20.0,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 2, 20, 0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1),
                borderRadius: BorderRadius.circular(50),
                color: Colors.white54,
              ),
              height: 50,
              width: 100,
              child: TextButton(
            onPressed: (){
                Navigator.pushNamed(context, '/signup');
            },
             child: Text("Sign Up",  
             style: TextStyle(
               color: Colors.red, 
               
               fontSize: 30.0,
             
               ),
             ),
              ),

        ),
         SizedBox(
          height: 20.0,
         ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 2, 10, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.red,
          ),
          // width: 100,
          height: 50,
          child: TextButton(
            onPressed: (){
                Navigator.pushNamed(context, '/login');
            },
             child: Text("Log In",  
             style: TextStyle(
               color: Colors.white, 
               
               fontSize: 30.0,
             
               ),
             ),
          
          // child: ElevatedButton(
          //    style: ButtonStyle(
          //                 backgroundColor:
          //                 MaterialStateProperty.all(Colors.blue)),
              
          //   onPressed: (){
          //       Navigator.pushNamed(context, '/login');
          //   },
          //    child: Text("Log In",  
          //    style: TextStyle(
          //      color: Colors.red, 
               
          //      fontSize: 30.0,
          //     //  backgroundColor: Colors.red
          //      ),
          //    )
          //    ),
        ),
//         SizedBox(
//           height: 20.0,
//         ),
//          Container(
//             decoration: BoxDecoration(
//             // border: Border.all(color: Colors.blue),
//             borderRadius: BorderRadius.circular(50.0),
//             // color: Colors.white,
//               color: Colors.red,
//           ),
         
//            width: 100,
//           height: 50,
//            child: ElevatedButton(
//           onPressed: (){
//                 Navigator.pushNamed(context, '/login');
//           },
//              child: Text("Log In", 
//              style: TextStyle(
//                color: Colors.red,
//                 fontSize: 30.0, 
//               //  backgroundColor: Colors.red
//                ),
//                )
//              ),
//          )
        ),],

    );
    
  }

  Widget buildimage( String images, int index) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.asset('$images', fit: BoxFit.fill,)
    );
  }
}
// class Home_slider extends StatefulWidget {
//   const Home_slider({
//      Key? key,
//      required this.images,
//       }) : super(key: key);
//       final List<String> images;

//   @override
//   _Home_sliderState createState() => _Home_sliderState();
// }

// class _Home_sliderState extends State<Home_slider> {
//   @override
//   Widget build(BuildContext context) {
//     var images;
//     return CarouselSlider.builder(
//       itemCount: images.length, 
//       itemBuilder: (context, index, realindex){
//         final image = images[index];
//         return Container(
//           height: MediaQuery.of(context).size.height,
//           color: Colors.amberAccent,
//           child: Image.asset(image, fit: BoxFit.fill,),
//         )
//       }
//       )
//   }
// }
// ListView(
    //     children: [
    //      CarouselSlider.builder(
    //        itemCount: images.length, 
    //        itemBuilder: (context,index,realindex){
    //          final image = images[index];
    //         //  return buildimage();
    //         return Container(
    //           height: MediaQuery.of(context).size.height,
    //           color: Colors.redAccent,
    //           child: Image.asset(image, fit: BoxFit.fill,),
    //         )
    //        }, 
    //        options: CarouselOptions(
    //          autoPlayInterval: Duration(seconds: 2),
    //          viewportFraction: 1,
    //          autoPlay: true,
    //          height: 400
    //        )
    //      )],
    // );

//   Widget buildimage() {
//     return Container(
//     child: Image(image: AssetImage('$images')),
//     );
//   }
// }