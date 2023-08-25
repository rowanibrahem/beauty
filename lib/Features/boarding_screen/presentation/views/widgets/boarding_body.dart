import 'package:beauty/Features/boarding_screen/presentation/models/boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class BoardingBody extends StatefulWidget {
  const BoardingBody({Key? key}) : super(key: key);

  @override
  State<BoardingBody> createState() => _BoardingBodyState();
}

class _BoardingBodyState extends State<BoardingBody> {
  final pageController = PageController();
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.withOpacity(.2),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: boardingItems.length,
                onPageChanged: (index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context,index){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:
                    [
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            color: Colors.pink.withOpacity(.2)
                        ),
                      ),
                      const SizedBox(height: 30,),
                      Image.asset(boardingItems[index].image,fit: BoxFit.fill,height: 400,width: double.infinity,),
                      const SizedBox(height: 40,),
                      Center(
                        child:Text(boardingItems[index].title,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18)),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  if( currentIndex < 2 )
                  {
                    pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeIn);
                  }
                  else
                  {
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                  }
                },
                child: Container(
                  height:45 ,
                  width: 330,
                  decoration:  BoxDecoration(
    gradient: const LinearGradient(
    end: Alignment(-1.00, -0.00),
    begin: Alignment(1, 0),
    colors: [Color(0xFF8D51ED), Color(0xFFC21E81)],
    ),
                      borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text("Next",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.white
                      ),),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            SmoothPageIndicator(
              controller: pageController,
              count:  3,
              axisDirection: Axis.horizontal,
              effect: const SlideEffect(
                  spacing:  8.0,
                  radius:  10.0,
                  dotWidth:  4.0,
                  dotHeight:  4.0,
                  paintStyle:  PaintingStyle.stroke,
                  strokeWidth:  1.5,
                  dotColor:  Colors.grey,
                  activeDotColor: Colors.pink
              ),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
