import 'package:flutter/material.dart';
import '../constants.dart';

class Post extends StatelessWidget {
  final fontSize = 15.0;
  final iconSize = 20.0;
  final String account;
  final String postContent;
  final String comment;
  final List<String>? images;

  const Post({
    required this.account,
    required this.postContent,
    required this.comment,
    this.images = const [],
  });

  @override
  Widget build(BuildContext context) {
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
                                size: iconSize,
                              ),
                            ])
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //content
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  postContent,
                  style: TextStyle(
                    fontSize: fontSize,
                  ),
                ),
              ),
              //images
              images!.length > 0
                  ? Container(
                      height: 200.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              child: Image.network(images![index]),
                            ),
                          );
                        },
                      ),
                    )
                  : Container(),
              // like
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
                          size: iconSize,
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
                          size: iconSize,
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
                          size: iconSize,
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
                        size: iconSize,
                      ),
                    ),
                  ],
                ),
              ),
              // comment
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
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
                    ),
                    SizedBox(height: 5.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            comment,
                            style: TextStyle(
                              fontSize: fontSize,
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            color: Colors.grey,
                            size: iconSize,
                          ),
                        ]),
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
                      SizedBox(width: 10.0),
                      Flexible(
                        child: Container(
                          child: TextFormField(
                            expands: true,
                            maxLines: null,
                            minLines: null,
                            decoration: InputDecoration(
                              constraints: BoxConstraints(maxHeight: 50),
                              hintText: 'Viết bình luận...',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  borderSide: BorderSide(color: Colors.grey)),
                              hintStyle: TextStyle(
                                fontSize: fontSize,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        child: Icon(
                          Icons.send,
                          color: Colors.grey,
                          size: iconSize,
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
