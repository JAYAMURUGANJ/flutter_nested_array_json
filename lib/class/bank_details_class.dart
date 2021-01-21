class BankDetails {
  String bankName;
  String branchName;
  String city;
  String state;
  String startDate;
  String endDate;
  String dailytimeStart;
  String dailytimeEnd;
  List<CauseDetails> causeDetails;

  BankDetails(
      {this.bankName,
      this.branchName,
      this.city,
      this.state,
      this.startDate,
      this.endDate,
      this.dailytimeStart,
      this.dailytimeEnd,
      this.causeDetails});

  BankDetails.fromJson(Map<String, dynamic> json) {
    bankName = json['bankName'];
    branchName = json['branchName'];
    city = json['city'];
    state = json['State'];
    startDate = json['start date'];
    endDate = json['End date'];
    dailytimeStart = json['DailytimeStart'];
    dailytimeEnd = json['DailytimeEnd'];
    if (json['cause_details'] != null) {
      causeDetails = new List<CauseDetails>();
      json['cause_details'].forEach((v) {
        causeDetails.add(new CauseDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bankName'] = this.bankName;
    data['branchName'] = this.branchName;
    data['city'] = this.city;
    data['State'] = this.state;
    data['start date'] = this.startDate;
    data['End date'] = this.endDate;
    data['DailytimeStart'] = this.dailytimeStart;
    data['DailytimeEnd'] = this.dailytimeEnd;
    if (this.causeDetails != null) {
      data['cause_details'] = this.causeDetails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CauseDetails {
  List<String> sno;
  List<String> caseType;
  List<String> caseNumber;
  List<String> caseYear;
  List<String> services;
  List<String> jurisdiction;
  List<String> pettioner;
  List<String> respondent;
  List<String> advocate;

  CauseDetails(
      {this.sno,
      this.caseType,
      this.caseNumber,
      this.caseYear,
      this.services,
      this.jurisdiction,
      this.pettioner,
      this.respondent,
      this.advocate});

  CauseDetails.fromJson(Map<String, dynamic> json) {
    sno = json['sno'].cast<String>();
    caseType = json['case_type'].cast<String>();
    caseNumber = json['case_number'].cast<String>();
    caseYear = json['case_year'].cast<String>();
    services = json['services'].cast<String>();
    jurisdiction = json['jurisdiction'].cast<String>();
    pettioner = json['pettioner'].cast<String>();
    respondent = json['respondent'].cast<String>();
    advocate = json['advocate'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sno'] = this.sno;
    data['case_type'] = this.caseType;
    data['case_number'] = this.caseNumber;
    data['case_year'] = this.caseYear;
    data['services'] = this.services;
    data['jurisdiction'] = this.jurisdiction;
    data['pettioner'] = this.pettioner;
    data['respondent'] = this.respondent;
    data['advocate'] = this.advocate;
    return data;
  }
}
