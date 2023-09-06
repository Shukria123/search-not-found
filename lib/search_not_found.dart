import 'package:flutter/material.dart';

class SearchNotFound extends StatefulWidget {
  const SearchNotFound({super.key});

  @override
  State<SearchNotFound> createState() => _SearchNotFoundState();
}

class _SearchNotFoundState extends State<SearchNotFound> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.blue,
        ),
        title: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none),
            fillColor: Color.fromARGB(255, 244, 242, 241),
            filled: true,
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Icon(Icons.search),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Icon(Icons.list_sharp),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.check_circle_sharp,
                  color: Colors.white,
                ),
                label: Text(
                  "All",
                  style: TextStyle(color: Colors.white),
                ),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(20, 40)),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.house_outlined),
                label: Text("House"),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.villa_outlined),
                label: Text("Villa"),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.apartment_outlined),
                  label: Text("Apartment"),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.blue),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ))),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.all(12)),
              Text(
                "0 found",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.article_rounded,
                    color: Colors.blue,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.dashboard_sharp,
                    color: Colors.blue,
                  )),
            ],
          ),
          Expanded(
              child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10)),
              Image.asset(""),
              SizedBox(
                height: 20,
              ),
              Text(
                "Not Found",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Sorry, the keyword you entered cannot be found. please check again or search with another keyword"),
            ],
          ))
        ],
      ),
    ));
  }
}
