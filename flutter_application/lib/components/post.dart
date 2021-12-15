import 'package:flutter/material.dart';
import 'package:flutter_application/components/gradient_button.dart';
import '../constants.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);
  final fontSize = 15.0;
  final account = 'Thang em sinh nam 96';
  final postContent =
      'Có thể nói IT là vua của các nghề Ngành IT Việt Nam hiện nay ở đầu của sự phát triển. Có thể nói IT là vua của các nghề. Vừa có tiền, có quyền. Vừa kiếm được nhiều  lại được xã hội trọng vọng. Thằng em mình học bách khoa cơ khí, bỏ ngang sang IT, sinh năm 96. Tự mày mò học code rồi đi làm remote cho công ty Mỹ 2 năm nay. Mỗi tối online 3-4 giờ là xong việc. Lương tháng 3k6. Nhưng thu nhập chính vẫn là từ nhận các project bên ngoài làm thêm. Tuần làm 2,3 cái nhẹ nhàng 9,10k tiền tươi thóc thật không phải đóng thuế. Làm gần được 3 năm mà nhà xe nó đã mua đủ cả. Nghĩ mà thèm. Gái gú thì cứ nghe nó bảo làm CNTT thì chảy nước. Có bé kia dân du học sinh Úc, về được cô chị giới thiệu làm ngân hàng VCB. Thế nào thằng ấy đi mở thẻ tín dụng gặp phải thế là hốt được cả chị lẫn em. 3 đứa nó sống chung một căn hộ cao cấp. Nhà con bé kia biết chuyện ban đầu phản đối sau biết thằng đấy học IT thì đổi thái độ, cách ba bữa hỏi thăm, năm bữa tặng quà giục cưới kẻo lỡ kèo. Đáng lẽ tháng này là đám cưới tụi nó nhưng dính covid nên dời lại cuối năm rồi.';
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: subBgColor,
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('images/avatar.png'),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              account,
                              style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(children: [
                              Text(
                                '1 giờ trước',
                                style: TextStyle(
                                  fontSize: fontSize,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 5.0),
                              Icon(
                                Icons.public,
                                color: Colors.grey,
                                size: fontSize,
                              ),
                            ])
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  postContent,
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
              ),
              // like,comment
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          size: fontSize,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '1.5k',
                          style: TextStyle(
                            fontSize: fontSize,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_upward_sharp,
                          color: Colors.grey,
                          size: fontSize,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '1k',
                          style: TextStyle(
                            fontSize: fontSize,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.comment,
                          color: Colors.grey,
                          size: fontSize,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          '1.5k',
                          style: TextStyle(
                            fontSize: fontSize,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Icon(
                        Icons.share,
                        color: Colors.grey,
                        size: fontSize,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage('images/avatar.png'),
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'Bug loi mat',
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Text(
                        'mot con vit xoe ra hai con than lan con',
                        style: TextStyle(
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.edit,
                        color: Colors.grey,
                        size: fontSize,
                      ),
                    ),
                  ],
                ),
              ),
              //write comment box
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/avatar.png'),
                      ),
                      Container(
                        child: TextFormField(
                          expands: true,
                          maxLines: null,
                          minLines: null,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                                maxWidth: screenWidth * 0.4,
                                maxHeight: screenHeight * .5),
                            hintText: 'Viết bình luận...',
                            hintStyle: TextStyle(
                              fontSize: fontSize,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.send,
                          color: Colors.grey,
                          size: fontSize,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
