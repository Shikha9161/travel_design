import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: 400,
              height: 501,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9), // Background color
                image: const DecorationImage(
                  image: AssetImage('assets/travel/mmt4.webp'), // Replace with your image asset path
                  fit: BoxFit.cover, // Adjust the image fit as needed
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Row(
                    children: [

                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color(0xFFF9F9F9), // Background color
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.back();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color is handled by the Container
                            shadowColor: Colors.transparent, // Removes any shadow from the button
                            shape: const CircleBorder(), // Ensures the button retains its circular shape
                            padding: const EdgeInsets.all(0), // Ensures no extra padding inside the button
                          ),
                          child:  const Icon(Icons.arrow_back),// Add an icon or text here if needed
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF9F9F9), // Background color
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            // Define your onPressed action here
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, // Background color is handled by the Container
                            shadowColor: Colors.transparent, // Removes any shadow from the button
                            shape: const CircleBorder(), // Ensures the button retains its circular shape
                            padding: const EdgeInsets.all(0), // Ensures no extra padding inside the button
                          ),
                          child: const Icon(Icons.thumb_up_alt_outlined), // Add an icon or text here if needed
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Semeru Mountain',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Container(
                                width: 12,
                                height: 12,
                                child: CustomPaint(
                                  painter: LocationIconPainter(),
                                ),
                              ),
                              const SizedBox(width: 7),
                              Text(
                                'Malang, East Java',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 69),
                      Container(
                        width: 80,
                        height: 80,
                        child: Stack(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage('assets/your_image.jpg'), // Replace with your image asset path
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFFF9F9F9),
                                  width: 1,
                                ),
                              ),
                            ),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const Positioned(
                              left: 30,
                              top: 30,
                              child: Text(
                                '5+',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ), // Add your child widget here if needed
            ),
            SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const Text(
                       'Rating', // Replace with your text
                       style: TextStyle(
                           fontSize: 8,
                           color: Colors.grey// Adjust the font size as needed
                       ),
                     ),
                     TextButton.icon(onPressed: (){}, icon: const Icon(
                       Icons.star, // Replace with your icon
                       size: 24, // Adjust the size as needed
                     ), label:  const Text(
                       '4.5', // Replace with your text
                       style: TextStyle(
                         fontSize: 12,
                         // Adjust the font size as needed
                       ),
                     ),)

                   ],
                 ),
                 const Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                       'Type', // Replace with your text
                       style: TextStyle(
                           fontSize: 8,
                           color: Colors.grey// Adjust the font size as needed
                       ),
                     ),
                     SizedBox(height: 10,),
                     Text(
                       'Open Trip', // Replace with your text
                       style: TextStyle(
                         fontSize: 12,
                         // Adjust the font size as needed
                       ),
                     )

                   ],
                 ),
                 const Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                       'Estimate', // Replace with your text
                       style: TextStyle(
                           fontSize: 8,
                           color: Colors.grey// Adjust the font size as needed
                       ),
                     ),
                     SizedBox(height: 10,),
                     Text(
                       '3D 2N', // Replace with your text
                       style: TextStyle(
                         fontSize: 12,
                         // Adjust the font size as needed
                       ),
                     )

                   ],
                 ),
                 const Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text(
                       'Via', // Replace with your text
                       style: TextStyle(
                           fontSize: 8,
                           color: Colors.grey// Adjust the font size as needed
                       ),
                     ),
                     SizedBox(height: 10,),
                     Text(
                       'Ranupane', // Replace with your text
                       style: TextStyle(
                         fontSize: 12,
                         // Adjust the font size as needed
                       ),
                     )

                   ],
                 ),
               ],
             ),
            SizedBox(height: 20,),
            Text("Desciption",style: TextStyle(fontSize: 14,color: Colors.black),),
            SizedBox(height: 5,),
            Text("Mount Semeru or Mount Meru is a cone volcano in East Java, Indonesia. Mount Semeru is the highest mountain on the island of Java, with its peak Mahameru, 3,676 meters above sea level.",style: TextStyle(fontSize: 12,color: Colors.black87),)

          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: Color(0xFF00B03C), // Background color
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: Offset(0, 4),
                  blurRadius: 4,
                ),
              ],
              borderRadius: BorderRadius.circular(100),
            ),
            child: ElevatedButton(
              onPressed: () {
                // Define your onPressed action here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Background color is handled by the Container
                shadowColor: Colors.transparent, // Removes any shadow from the button itself
                shape: CircleBorder(), // Ensures the button retains its circular shape
                padding: EdgeInsets.zero, // Ensures no extra padding inside the button
              ),
              child:  Center(
                child: Image.network("https://w7.pngwing.com/pngs/368/1007/png-transparent-logo-whatsapp-scalable-graphics-icon-whatsapp-logo-telephone-call-logo-text-grass-whatsapp-logo-png-thumbnail.png"), // Replace with your desired icon or widget
              ),
            ),
          ),
        ),
    );
  }
}


class LocationIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFF9F9F9)
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    // Draw the outer circle
    canvas.drawCircle(size.center(Offset.zero), size.width / 2, paint);

    // Draw the inner circle
    canvas.drawCircle(size.center(Offset.zero), size.width / 3, paint);

    // Draw the vector
    final path = Path()
      ..moveTo(size.width / 2, size.height * 0.3)
      ..lineTo(size.width / 2, size.height * 0.7)
      ..moveTo(size.width * 0.37, size.height / 2)
      ..lineTo(size.width * 0.63, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}