import 'package:flutter/widgets.dart';

class ComicList extends StatefulWidget {
  @override
  _ComicListState createState() {
    return _ComicListState();
  }
}

class _ComicListState extends State {
  List<String> imglist = [];
  int nowId = 602;
  @override
  void initState() {
    for (int i = 0; i < 20; i++) {
      nowId++;
      imglist.add("https://picsum.photos/id/$nowId/400/800");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imglist.length,
      itemBuilder: (context, index) => buildImageList(context, index),
    );
  }

  Widget buildImageList(BuildContext context, int index) {
    if (index == imglist.length - 1) {
      // _loadMore();
    }
    return Image.network(imglist[index]);
  }

  void _loadMore() {
    if (!mounted) {
      return;
    }
    setState(() {
      for (int i = 0; i < 20; i++) {
        nowId++;
        imglist.add("https://picsum.photos/id/$nowId/400/800");
      }
    });

    print("_loadMore");
  }
}
