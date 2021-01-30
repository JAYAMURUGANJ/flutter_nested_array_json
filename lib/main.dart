import 'package:flutter/material.dart';
import 'package:jsonflutter/service/workshopdetails_services.dart';
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
                            Text("Name" + ": " + announcementList[index].name,
                                textAlign: TextAlign.center),
                            Text(
                                "Service" +
                                    ": " +
                                    announcementList[index].services,
                                textAlign: TextAlign.center),
                            Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(20.0),
                              child: Table(
                                border: TableBorder.all(color: Colors.black),
                                children: [
                                  TableRow(children: [
                                    Text(
                                      "Place",
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "Bike Model",
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "Owner Name",
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Text(
                                      announcementList[index]
                                          .workDetails[0]
                                          .bike0
                                          .place
                                          .toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      announcementList[index]
                                          .workDetails[0]
                                          .bike0
                                          .ownerName
                                          .toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      announcementList[index]
                                          .workDetails[0]
                                          .bike0
                                          .bikeModel
                                          .toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Text(
                                      announcementList[index]
                                          .workDetails[0]
                                          .bike1
                                          .place
                                          .toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      announcementList[index]
                                          .workDetails[0]
                                          .bike1
                                          .ownerName
                                          .toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      announcementList[index]
                                          .workDetails[0]
                                          .bike1
                                          .bikeModel
                                          .toString(),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    })));
  }
}
