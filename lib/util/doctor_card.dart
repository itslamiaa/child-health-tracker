import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100]
        ),
        child: Column(
          children: [
            // picture of doc
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/calendar.png',height: 100,)),
            SizedBox(height: 10,),
            // rating
            Row(children: [
              Icon(Icons.star,color: Colors.yellow[400],),
              Text('4,9',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16))]),
            SizedBox(height: 10,),
            //doc name
            Text('Dr.Meguireche Lamia',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            // doc title
            Text('therapist'),
          ],
        ),
      ),
    );
  }
}
