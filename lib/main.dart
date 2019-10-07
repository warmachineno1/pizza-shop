import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//thư viện viết thêm:
import 'package:pizzaapp/components/horizontal_listview.dart';
import 'package:pizzaapp/components/products.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //1. Tạo bảng quảng cáo cho app -------------------------
        Widget image_carousel = new Container(
          height: 200.0,
          child: new Carousel(
            boxFit: BoxFit.cover,
            images: [
              AssetImage('images/c4.jpg'),
              AssetImage('images/c5.jpg'),
              AssetImage('images/c7.jpg'),
              AssetImage('images/c8.jpg')
            ],
            autoplay: true, // tự chạy
             dotSize: 4.0, //dấu chấm tròn dưới thanh chạy quảng cáo, càng lớn dấu càng nhỏ
             indicatorBgPadding: 3.0, // Tốc độ đổi hình giữa 2 hình
            //animationCurve: Curves.fastOutSlowIn,
            //animationDuration: Duration(milliseconds: 2000), //thời gian tự thay đổi: 2s
          ),
        );
    //1. Tạo bảng quảng cáo cho app -------------------------

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Pizza Daddy'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}), // tạo nút icon tìm kiếm
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){})
        ],
      ),

      // tạo thanh menu
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header trên thanh menu hiển thị thông tin người dùng
            new UserAccountsDrawerHeader(
                accountName: Text('Vĩnh Duyệt'),
                accountEmail: Text('nguyenvinhduyet@gmail.com'),

          // Tạo hình ảnh avatar của người dùng
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.brown,
              // tạo hình ảnh bên trong vòng tròn avatar người dùng
              child: Icon(Icons.person, color: Colors.white,),
            ),
          ),
              //Màu background của thanh menu thông tin người dùng
              decoration: new BoxDecoration(
                color: Colors.red,
              ),
            ),
            // Tạo các thuộc tính trong thanh menu
            InkWell(
              onTap: (){}, // Tạo button cho nút trong Menu
              child: ListTile(
              title: Text('Trang chính'),
              leading: Icon(Icons.home, color: Colors.green),
              )
            ),
            InkWell(
                onTap: (){}, // Tạo button cho nút trong Menu
                child: ListTile(
                  title: Text('Tài khoản của tôi'),
                  leading: Icon(Icons.person, color: Colors.green),
                )
            ),
            InkWell(
                onTap: (){}, // Tạo button cho nút trong Menu
                child: ListTile(
                  title: Text('Đơn đặt'),
                  leading: Icon(Icons.shopping_basket, color: Colors.green),
                )
            ),
            InkWell(
                onTap: (){}, // Tạo button cho nút trong Menu
                child: ListTile(
                  title: Text('Loại thực đơn'),
                  leading: Icon(Icons.dashboard, color: Colors.green),
                )
            ),
            InkWell(
                onTap: (){}, // Tạo button cho nút trong Menu
                child: ListTile(
                  title: Text('Món yêu thích'),
                  leading: Icon(Icons.favorite, color: Colors.red),
                )
            ),
            InkWell(
                onTap: (){}, // Tạo button cho nút trong Menu
                child: ListTile(
                  title: Text('Cài đặt'),
                  leading: Icon(Icons.settings, color: Colors.blue),
                )
            ),
            InkWell(
                onTap: (){}, // Tạo button cho nút trong Menu
                child: ListTile(
                  title: Text('Về chúng tôi'),
                  leading: Icon(Icons.help, color: Colors.blue),
                )
            ),
          ],
        ),
      ),
        // 1. Tạo bảng quảng cáo cho app -------------------------
      body: new ListView(
        children: <Widget>[
          //hình ảnh quảng cáo:
          image_carousel,
          //1. Tạo bảng quảng cáo cho app -------------------------

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0), // Tạo list danh mục sản phẩm dưới QC
            child: new Text('Danh mục'),),

            //2. -ListView của Danh mục ngang (bắt đầu chạy ở đây):----
            HorizontalList(),
            //2. ------------------------------------------------------

          new Padding(padding: const EdgeInsets.all(8.0), // Tạo list danh mục sản phẩm mới
            child: new Text('Sản phẩm mới'),),

          //3. Tạo danh sách hiển thị thông tin sản phẩm (GridView)
          Container(
            height: 320.0,
            child: Products(),
          )


          ],
      ),
    );
  }
}


