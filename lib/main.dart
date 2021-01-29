import 'package:flutter/material.dart';
import 'package:jsontolistview/service/workshopdetails_services.dart';
import 'class/workshopdetails_class.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool isLoading = true;

class _MyHomePageState extends State<MyHomePage> {
  List<WorkShopDetails> documents = List();
  List<WorkShopDetails> announcementList = List();

  @override
  void initState() {
    super.initState();
    fetchProfileInfo().then(
      (value) {
        setState(() {
          documents = value;
          announcementList = documents;
          isLoading = false;
        });
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Bank Details',
          ),
        ),
        body: SingleChildScrollView(
            child: isLoading
                ? Container(
                    child: Center(
                    child: CircularProgressIndicator(),
                  ))
                : ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: announcementList.length,
                    itemBuilder: (BuildContext context, int index) {
                      // DateTime date =
                      //     DateTime.parse(announcementList[index].createdDate);

                      // String causeDate =
                      //     formatDate(date, [yyyy, '/', mm, '/', dd]);

                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Service" +
                                ": " +
                                announcementList[index].services),
                            //cause details inner array
                            // Container(
                            //   color: Colors.white,
                            //   padding: EdgeInsets.all(20.0),
                            //   child: Table(
                            //     border: TableBorder.all(color: Colors.black),
                            //     children: [
                            //       TableRow(children: [
                            //         Text(
                            //           "APPLICATION/APPEAL NO.",
                            //           textAlign: TextAlign.center,
                            //         ),
                            //         Text(
                            //           "NAME OF PARTIES",
                            //           textAlign: TextAlign.center,
                            //         ),
                            //         Text(
                            //           "NAME OF REPRESENTATIVE",
                            //           textAlign: TextAlign.center,
                            //         ),
                            //       ]),
                            //       TableRow(children: [
                            //         Text(
                            //           announcementList[index]
                            //                   .causeDetails[0]
                            //                   .caseType[0]
                            //                   .toString() +
                            //               "/" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .caseNumber[0]
                            //                   .toString() +
                            //               "/" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .caseYear[0]
                            //                   .toString() +
                            //               "/" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .bench[0]
                            //                   .toString() +
                            //               "/" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .services[0]
                            //                   .toString(),
                            //           textAlign: TextAlign.center,
                            //         ),
                            //         Text(
                            //           announcementList[index]
                            //                   .causeDetails[0]
                            //                   .advocate[0] +
                            //               "\n vs \n" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .pettioner[0],
                            //           textAlign: TextAlign.center,
                            //         ),
                            //         Text(
                            //           announcementList[index]
                            //               .causeDetails[0]
                            //               .respondent[0],
                            //           textAlign: TextAlign.center,
                            //         ),
                            //       ]),
                            //       TableRow(children: [
                            //         Text(
                            //           announcementList[index]
                            //                   .causeDetails[0]
                            //                   .caseType[1]
                            //                   .toString() +
                            //               "/" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .caseNumber[1]
                            //                   .toString() +
                            //               "/" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .caseYear[1]
                            //                   .toString() +
                            //               "/" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .bench[1]
                            //                   .toString() +
                            //               "/" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .services[1]
                            //                   .toString(),
                            //           textAlign: TextAlign.center,
                            //         ),
                            //         Text(
                            //           announcementList[index]
                            //                   .causeDetails[0]
                            //                   .advocate[1] +
                            //               "\n vs \n" +
                            //               announcementList[index]
                            //                   .causeDetails[0]
                            //                   .pettioner[1],
                            //           textAlign: TextAlign.center,
                            //         ),
                            //         Text(
                            //           announcementList[index]
                            //               .causeDetails[0]
                            //               .respondent[1],
                            //           textAlign: TextAlign.center,
                            //         ),
                            //       ]),
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      );
                    })));
  }
}
