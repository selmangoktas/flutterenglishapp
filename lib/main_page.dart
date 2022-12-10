import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyMainPage extends StatelessWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        children: [
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: ()=>DetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Renkler',
                  style: _textStyle(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: ()=>DetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Günler',
                  style: _textStyle(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: ()=>DetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Mevsimler',
                  style: _textStyle(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: ()=>DetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Hayvanlar',
                  style: _textStyle(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: ()=>DetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Sayılar',
                  style: _textStyle(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: ()=>DetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Örnek',
                  style: _textStyle(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: ()=>DetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lime, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Sayılar',
                  style: _textStyle(),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: ()=>DetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Örnek',
                  style: _textStyle(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle _textStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 25,
    );
  }
}
