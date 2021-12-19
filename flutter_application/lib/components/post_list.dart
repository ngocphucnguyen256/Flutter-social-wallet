//list of post
import 'package:flutter/material.dart';
import 'create_post.dart';
import 'post.dart';

class PostList extends StatelessWidget {
  final fontSize = 15.0;
  final List<String> account = <String>[
    'Thang em sinh nam 96',
    'Bug loi mat',
    'Chuaaa he'
  ];
  final List<String> postContent = <String>[
    'Có thể nói IT là vua của các nghề Ngành IT Việt Nam hiện nay ở đầu của sự phát triển. Có thể nói IT là vua của các nghề. Vừa có tiền, có quyền. Vừa kiếm được nhiều  lại được xã hội trọng vọng. Thằng em mình học bách khoa cơ khí, bỏ ngang sang IT, sinh năm 96. Tự mày mò học code rồi đi làm remote cho công ty Mỹ 2 năm nay. Mỗi tối online 3-4 giờ là xong việc. Lương tháng 3k6. Nhưng thu nhập chính vẫn là từ nhận các project bên ngoài làm thêm. Tuần làm 2,3 cái nhẹ nhàng 9,10k tiền tươi thóc thật không phải đóng thuế. Làm gần được 3 năm mà nhà xe nó đã mua đủ cả. Nghĩ mà thèm. Gái gú thì cứ nghe nó bảo làm CNTT thì chảy nước. Có bé kia dân du học sinh Úc, về được cô chị giới thiệu làm ngân hàng VCB. Thế nào thằng ấy đi mở thẻ tín dụng gặp phải thế là hốt được cả chị lẫn em. 3 đứa nó sống chung một căn hộ cao cấp. Nhà con bé kia biết chuyện ban đầu phản đối sau biết thằng đấy học IT thì đổi thái độ, cách ba bữa hỏi thăm, năm bữa tặng quà giục cưới kẻo lỡ kèo. Đáng lẽ tháng này là đám cưới tụi nó nhưng dính covid nên dời lại cuối năm rồi.',
    'package:flutter_application/components/gradient_button.dart',
    'phap su trung hoa'
  ];
  final List<String> comment = <String>[
    'day la comment',
    'spam ahihi',
    'spam ahihi'
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CreatePost(),
          ListView.builder(
              shrinkWrap: true,
              itemCount: account.length,
              itemBuilder: (BuildContext context, int index) {
                return Post(
                  account: account[index],
                  postContent: postContent[index],
                  comment: comment[index],
                );
              }),
        ],
      ),
    );
  }
}