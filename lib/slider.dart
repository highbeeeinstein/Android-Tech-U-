// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/webviews/tech-u-website.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Image_slider extends StatefulWidget {
  const Image_slider({ Key? key }) : super(key: key);

  @override
  _Image_sliderState createState() => _Image_sliderState();
}

class _Image_sliderState extends State<Image_slider> {
  final images=[
    'assets/slide1.jpg',
    'assets/slide2.jpg',
    'assets/slide3.jpg',
    'assets/slide4.jpg',
    'assets/tech3.jpg',
    'assets/tech4.jpg',
    'assets/tech5.jpg',
    'assets/tech6.jpg',
    'assets/tech7.jpg',

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
              launch("https://tech-u.edu.ng/");
              // Tech_U_Website();
                // Navigator.pushNamed(context, '/signup');
    //             WebView(
    //       javascriptMode: JavascriptMode.unrestricted,
    //       initialUrl: 'https://tech-u.edu.ng/',
    //       // onWebViewCreated: (controller){
    //       //   this.controller = controller;
    //       // },
    // );
            },
             child: Text("GO TO OUR WEBSITE",  
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