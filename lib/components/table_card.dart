import 'package:flutter/material.dart';

//import 'package:flutter_web/material.dart';
//
//import 'package:website/models/github_model.dart';

class TableCard extends StatefulWidget {
  @override
  _TableCardState createState() => _TableCardState();
}

class _TableCardState extends State<TableCard> {
  List< /*GithubTrendingModel*/ String> dataAuthor = ['John Doe'];
  List< /*GithubTrendingModel*/ String> dataLanguage = ['Flutter'];
  List< /*GithubTrendingModel*/ String> dataStars = ['123445'];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width < 1300
              ? MediaQuery.of(context).size.width - 100
              : MediaQuery.of(context).size.width - 330,
          padding: EdgeInsets.only(bottom: 12),
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
          child: Table(
            columnWidths: <int, TableColumnWidth>{
              0: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              1: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              2: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              3: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
            },
            children: [
              TableRow(decoration: BoxDecoration(), children: [
                Container(
//                  color: Color(0xFFE4E7EA),
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "No.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFE4E7EA),
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Author Name",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
                Container(
//                  color: Color(0xFFE4E7EA),
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Language",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
                Container(
                  color: Color(0xFFE4E7EA),
                  padding: EdgeInsets.all(18),
                  child: Text(
                    "Stars",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'HelveticaNeue',
                    ),
                  ),
                ),
              ]),
              TableRow(
                decoration: BoxDecoration(),
                children: [],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width < 1300
              ? MediaQuery.of(context).size.width - 100
              : MediaQuery.of(context).size.width - 330,
          // padding: EdgeInsets.all(32),
          child: Table(
              columnWidths: <int, TableColumnWidth>{
                0: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                1: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                2: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
                3: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
              },
              children: List<TableRow>.generate(10, (i) {
                return TableRow(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.5, color: Colors.grey))),
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          (i + 1).toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          dataAuthor[i].toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          dataLanguage[i].toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          dataStars[i].toString(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                      )
                    ]);
              })),
        ),
      ]),
    );
  }
}

//Widget tableCard(BuildContext context, List<GithubTrendingModel> data) {
//  return Card(
//    elevation: 2.0,
//    child: Column(children: [
//      Container(
//        width: MediaQuery.of(context).size.width < 1300
//            ? MediaQuery.of(context).size.width - 100
//            : MediaQuery.of(context).size.width - 330,
//        padding: EdgeInsets.only(bottom: 12),
//        decoration: BoxDecoration(
//            border: Border(bottom: BorderSide(width: 1, color: Colors.grey))),
//        child: Table(
//          columnWidths: <int, TableColumnWidth>{
//            0: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
//            1: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
//            2: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
//            3: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
//          },
//          children: [
//            TableRow(decoration: BoxDecoration(), children: [
//              Container(
//                padding: EdgeInsets.all(18),
//                child: Text(
//                  "No.",
//                  style: TextStyle(
//                    fontSize: 18,
//                    color: Colors.black,
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'HelveticaNeue',
//                  ),
//                ),
//              ),
//              Container(
//                padding: EdgeInsets.all(18),
//                child: Text(
//                  "Author Name",
//                  style: TextStyle(
//                    fontSize: 18,
//                    color: Colors.black,
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'HelveticaNeue',
//                  ),
//                ),
//              ),
//              Container(
//                padding: EdgeInsets.all(18),
//                child: Text(
//                  "Language",
//                  style: TextStyle(
//                    fontSize: 18,
//                    color: Colors.black,
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'HelveticaNeue',
//                  ),
//                ),
//              ),
//              Container(
//                padding: EdgeInsets.all(18),
//                child: Text(
//                  "Stars",
//                  style: TextStyle(
//                    fontSize: 18,
//                    color: Colors.black,
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'HelveticaNeue',
//                  ),
//                ),
//              )
//            ]),
//          ],
//        ),
//      ),
//      Container(
//        width: MediaQuery.of(context).size.width < 1300
//            ? MediaQuery.of(context).size.width - 100
//            : MediaQuery.of(context).size.width - 330,
//        // padding: EdgeInsets.all(32),
//        child: Table(
//            columnWidths: <int, TableColumnWidth>{
//              0: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
//              1: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
//              2: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
//              3: FixedColumnWidth((MediaQuery.of(context).size.width / 5)),
//            },
//            children: List<TableRow>.generate(10, (i) {
//              return TableRow(
//                  decoration: BoxDecoration(
//                      border: Border(
//                          bottom: BorderSide(width: 0.5, color: Colors.grey))),
//                  children: [
//                    Container(
//                      padding: EdgeInsets.all(18),
//                      child: Text(
//                        (i + 1).toString(),
//                        style: TextStyle(
//                          fontSize: 14,
//                          color: Colors.black,
//                          fontFamily: 'Raleway',
//                        ),
//                      ),
//                    ),
//                    Container(
//                      padding: EdgeInsets.all(18),
//                      child: Text(
//                        data[i].author.toString(),
//                        style: TextStyle(
//                          fontSize: 14,
//                          color: Colors.black,
//                          fontFamily: 'HelveticaNeue',
//                        ),
//                      ),
//                    ),
//                    Container(
//                      padding: EdgeInsets.all(18),
//                      child: Text(
//                        data[i].language.toString(),
//                        style: TextStyle(
//                          fontSize: 14,
//                          color: Colors.black,
//                          fontFamily: 'Raleway',
//                        ),
//                      ),
//                    ),
//                    Container(
//                      padding: EdgeInsets.all(18),
//                      child: Text(
//                        data[i].stars.toString(),
//                        style: TextStyle(
//                          fontSize: 14,
//                          color: Colors.black,
//                          fontFamily: 'HelveticaNeue',
//                        ),
//                      ),
//                    )
//                  ]);
//            })),
//      ),
//    ]),
//  );
//}
