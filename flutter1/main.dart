import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Tilicho lake',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'near mustang of Nepal',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
          ),
    );
        
      
              



    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Tilicho Lake is a lake located in the Manang district of Nepal,'
        ' 55 kilometres (34 mi) as the crow flies from the city of Pokhara.'
        ' It is situated at an altitude of 4,919 metres (16,138 ft) in the'
         'Annapurna range of the Himalayas and is sometimes called the highest lake'
         ' for its size in the world, even though there are lakes at higher altitude even in Nepal,'
         ' and larger, higher lakes in Tibet.'
         ' According to the Nepali Department of Hydrology & Meteorology (2003),'
         ' no aquatic organism has been recorded in the lake.[citation needed].'

          
      ),
    );

    return MaterialApp(
      title: 'Visit Nepal',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Visit Nepal'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}