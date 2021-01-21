import 'package:flutter/material.dart';
import 'package:jsontolistview/service/causelistdetails_service.dart';
import 'class/causelistdetails_class.dart';
import 'package:date_format/date_format.dart';

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
  List<CauseListDetails> documents = List();
  List<CauseListDetails> announcementList = List();

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
                      DateTime date =
                          DateTime.parse(announcementList[index].causeDate);

                      String causeDate =
                          formatDate(date, [yyyy, '/', mm, '/', dd]);

                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bench" +
                                ": " +
                                announcementList[index].jurisdiction),
                            Text("Date" + ": " + causeDate),
                            Text("time" +
                                ": " +
                                announcementList[index].causeTime),
                            Text("Coram" +
                                ": " +
                                announcementList[index].judge +
                                "\n" +
                                announcementList[index].technicalMembers),

                            //cause details inner array

                            Container(
                              height: 100,
                              child: Row(
                                children: [
                                  for (var i in announcementList[index]
                                      .causeDetails[0]
                                      .sno)
                                    Text(i.toString()),
                                  for (var j in announcementList[index]
                                      .causeDetails[0]
                                      .caseType)
                                    Text(j.toString()),
                                  for (var j in announcementList[index]
                                      .causeDetails[0]
                                      .caseNumber)
                                    Text(j.toString()),
                                  for (var j in announcementList[index]
                                      .causeDetails[0]
                                      .caseYear)
                                    Text(j.toString()),
                                  for (var j in announcementList[index]
                                      .causeDetails[0]
                                      .services)
                                    Text(j.toString()),
                                  for (var j in announcementList[index]
                                      .causeDetails[0]
                                      .bench)
                                    Text(j.toString()),
                                  for (var j in announcementList[index]
                                      .causeDetails[0]
                                      .advocate)
                                    Text(j.toString()),
                                  for (var j in announcementList[index]
                                      .causeDetails[0]
                                      .pettioner)
                                    Text(j.toString()),
                                  for (var j in announcementList[index]
                                      .causeDetails[0]
                                      .respondent)
                                    Text(j.toString()),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })));
  }
}
