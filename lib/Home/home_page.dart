import 'package:flutter/material.dart';
import 'package:vision/colorpallete/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(8.0)),
        Container(
         width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
          height: MediaQuery.of(context).size.height * 0.25, // 25% of screen height
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Space on all sides
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: secondaryColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
              )
            ),
            child:
            Text("Deposit",
            style: TextStyle(
              color: primaryColor
            ),),
            ),
            ElevatedButton(onPressed: (){}, 
            
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                
              )
            ),
            child:
            Text("Withdraw",
            style: TextStyle(
              color:primaryColor
            ),),
            ),
            ElevatedButton(onPressed: (){}, 
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
              )
            ),
            child:
            Text("Trade",
            style: TextStyle(
              color: primaryColor
            ),),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          
          children: [
            Padding(padding: 
            EdgeInsets.all(8.0)
            ),
            
            Text(
            "AI Insights",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold        ),
            ),
          ],
        ),
        Container(
         width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
          height: MediaQuery.of(context).size.height * 0.20, // 25% of screen height
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Space on all sides
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: boxColor
      
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue, // Icon background color
                  radius: 20,
                  child: Icon(Icons.auto_graph, color: Colors.white, size: 20), // Market icon
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Padding(padding: 
                    EdgeInsets.all(10)),
                    
                    Text(
                      "Market Analysis",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Tech sector shows strong momentum \nwith AI stocks leading gains.",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Ask about your investments...",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  filled: true,
                  fillColor: Colors.white, // White background
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
            ),
          ],
        ),
          
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
          "Top Performers",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        Padding(padding: 
        EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                 Container(
              height: 100,
              width: 150,
              color: secondaryColor,
              child: Center(child: Text("Stock 1 - Dummy Data")),
            ),
            SizedBox(width: 10),
            Container(
              height: 100,
              width: 150,
              color: secondaryColor,

              child: Center(child: Text("Stock 2 - Dummy Data")),
            
            ),

                ],
              ),
            )
          ],
          
        ),),
        SizedBox(
          height: 20,
        ),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDummyButton("Button 1"),
                _buildDummyButton("Button 2"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildDummyButton("Button 3"),
                _buildDummyButton("Button 4"),
              ],
            ),
          ],
        ),
      
    
    
  
    
    
    
    
    );
    
  }
}
Widget _buildDummyButton(String label) {
    return Container(
      height: 80,
      width: 150,
      color: secondaryColor,
      child: Center(child: Text(label)),
    );
  }
