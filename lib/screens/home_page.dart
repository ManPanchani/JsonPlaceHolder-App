import 'package:flutter/material.dart';
import '../globals/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "JSON Placeholder",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: h * 0.07,
              width: w * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/posts";
                    Global.title = "Posts";
                  });
                  Navigator.pushNamed(
                    context,
                    "DetailsPage",
                  );
                },
                child: const Text(
                  "Posts",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.07,
              width: w * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.title = "Comments";
                    Global.endpoint = "/comments";
                  });
                  Navigator.pushNamed(
                    context,
                    "DetailsPage",
                  );
                },
                child: const Text("Comments",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
            SizedBox(
              height: h * 0.07,
              width: w * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/albums";
                    Global.title = "Albums";
                  });
                  Navigator.pushNamed(
                    context,
                    "DetailsPage",
                  );
                },
                child: const Text("Albums",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
            SizedBox(
              height: h * 0.07,
              width: w * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/photos";
                    Global.title = "Photos";
                  });
                  Navigator.pushNamed(
                    context,
                    "DetailsPage",
                  );
                },
                child: const Text("Photos",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
            SizedBox(
              height: h * 0.07,
              width: w * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/todos";
                    Global.title = "Todos";
                  });
                  Navigator.pushNamed(
                    context,
                    "DetailsPage",
                  );
                },
                child: const Text(
                  "Todos",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.07,
              width: w * 0.4,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Global.endpoint = "/users";
                    Global.title = "Users";
                  });
                  Navigator.pushNamed(
                    context,
                    "DetailsPage",
                  );
                },
                child: const Text(
                  "Users",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
