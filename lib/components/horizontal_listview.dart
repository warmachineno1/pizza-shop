// tạo thư viện horizontal_listview
import 'package:flutter/material.dart';

//Class Danh mục sản phẩm nằm ngang dưới QC
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[

          //Thêm vào các loại danh mục sản phẩm bán
        Category(
          image_location: 'images/c02.png',
          image_caption: 'PIZZA',
        ),
        Category(
          image_location: 'images/b1.png',
          image_caption:'BURGER',
        ),
        Category(
          image_location: 'images/m1.png',
          image_caption:'MÌ Ý',
        ),
        Category(
          image_location: 'images/n1.png',
          image_caption:'THỨC UỐNG',
        ),











          //--------------------------------------------------------
        ],
      ),
    );
  }
}
//-----------------------------------------------

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
    child: InkWell(onTap: (){},
      child: Container(
        width: 100.0,
          child: ListTile(
        title: Image.asset(image_location,
        width: 100.0,
        height: 80.0,),
        subtitle: Container(
          alignment: Alignment.topCenter, // thiết lập tên danh mục cho vào giữa các Danh mục sản phẩm
          child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
        ),
      ),
      ),
    ),
    );
  }
}




