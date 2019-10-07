import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [ //Tạo mảng chứa sản phẩm hiển thị
    {
      "name": "Pizza hải sản Pesto xanh",
      "picture":"images/products/pp1.PNG",
      "old_price":179,
      "price":159,
    },
    {
      "name": "Burger bò dứa nướng",
      "picture":"images/products/pb1.png",
      "old_price":179,
      "price":159,
    },

  ];

  //Tạo mảng chứa sản phẩm hiển thị
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_product({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
});

  @override

  //Gán giá trị hình ảnh, tên cho từng mục trong Sản phẩm mới
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(onTap: (){},
            child: GridTile(
            footer: Container(
            color: Colors.white60,
            child: ListTile(
              leading: Text(product_name, style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          child: Image.asset(product_picture,
          fit: BoxFit.cover,)),
      )
        ,)
      ),
    );
  }
}



