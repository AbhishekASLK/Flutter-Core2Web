import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  IconData unliked = Icons.favorite_border_outlined;

  void changeLiked() {
    setState(() {
      if (unliked == Icons.favorite_border_outlined) {
        unliked = Icons.favorite;
      } else {
        unliked = Icons.favorite_border_outlined;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Instagram",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite_rounded,
                color: Colors.red,
                size: 30,
              ),
            ),
            Icon(
              Icons.send,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://images.pexels.com/photos/12561624/pexels-photo-12561624.jpeg',
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          // first post
                          IconButton(
                            onPressed: changeLiked,
                            icon: Icon(
                              unliked,
                              color: Colors.red,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send),
                            color: Colors.white,
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark_outline_outlined,
                              size: 30,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),

                      // Second Post
                      Image.network(
                        'https://images.pexels.com/photos/650222/pexels-photo-650222.jpeg',
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          // first post
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_outline_outlined),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send),
                            color: Colors.white,
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark_outline_outlined,
                              size: 30,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),

                      // Third Post
                      Image.network(
                        'https://images.pexels.com/photos/650222/pexels-photo-650222.jpeg',
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          // first post
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_outline_outlined),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.comment_outlined),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send),
                            color: Colors.white,
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.bookmark_outline_outlined,
                              size: 30,
                            ),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                size: 30,
              ),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call,
                size: 30,
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.ac_unit_sharp,
                size: 30,
              ),
              label: 'Settings',
            ),
          ],
        ));
  }
}
