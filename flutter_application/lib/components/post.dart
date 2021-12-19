import 'package:flutter/material.dart';
import '../constants.dart';

class Post extends StatelessWidget {
  final fontSize = 15.0;
  final String account;
  final String postContent;
  final String comment;

  const Post({
    required this.account,
    required this.postContent,
    required this.comment,
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
              // comment
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
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
                    Expanded(
                      flex: 6,
                      child: Text(
                        comment,
                        style: TextStyle(
                          fontSize: fontSize,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
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
