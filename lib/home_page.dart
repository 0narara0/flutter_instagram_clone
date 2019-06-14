import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(
            'Instagram Clone',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Instagram에 오신 것을 환영합니다',
                style: TextStyle(fontSize: 24.0),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
              ),
              Text('사진과 동영상을 보려면 팔로우하세요'),
              Padding(
                padding: EdgeInsets.all(16.0),
              ),
              SizedBox(
                width: 260.0,
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(1.0),
                        ),
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/11/21/00/48/view-1844111_960_720.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        Text(
                          '이메일 주소',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('이름'),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2016/11/21/00/48/view-1844111_960_720.jpg', fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: EdgeInsets.all(1.0),
                            ),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2016/11/21/00/48/view-1844111_960_720.jpg', fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: EdgeInsets.all(1.0),
                            ),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(
                                  'https://cdn.pixabay.com/photo/2016/11/21/00/48/view-1844111_960_720.jpg', fit: BoxFit.cover,),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                        ),
                        Text('Facebook 친구'),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                        ),
                        RaisedButton(
                          child: Text('팔로우'),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                        Padding(
                          padding: EdgeInsets.all(4.0),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
