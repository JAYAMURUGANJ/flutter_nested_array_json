class CauseListDetails {
  String id;
  String ordering;
  String state;
  String checkedOut;
  String checkedOutTime;
  String createdBy;
  String modifiedBy;
  String causeDate;
  String causeTime;
  String jurisdiction;
  String technicalMembers;
  String services;
  String judge;
  List<CauseDetails> causeDetails;
  String attachment;

  CauseListDetails(
      {this.id,
      this.ordering,
      this.state,
      this.checkedOut,
      this.checkedOutTime,
      this.createdBy,
      this.modifiedBy,
      this.causeDate,
      this.causeTime,
      this.jurisdiction,
      this.technicalMembers,
      this.services,
      this.judge,
      this.causeDetails,
      this.attachment});

  CauseListDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ordering = json['ordering'];
    state = json['state'];
    checkedOut = json['checked_out'];
    checkedOutTime = json['checked_out_time'];
    createdBy = json['created_by'];
    modifiedBy = json['modified_by'];
    causeDate = json['cause_date'];
    causeTime = json['cause_time'];
    jurisdiction = json['jurisdiction'];
    technicalMembers = json['technical_members'];
    services = json['services'];
    judge = json['judge'];
    if (json['cause_details'] != null) {
      causeDetails = new List<CauseDetails>();
      json['cause_details'].forEach((v) {
        causeDetails.add(new CauseDetails.fromJson(v));
      });
    }
    attachment = json['attachment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['ordering'] = this.ordering;
    data['state'] = this.state;
    data['checked_out'] = this.checkedOut;
    data['checked_out_time'] = this.checkedOutTime;
    data['created_by'] = this.createdBy;
    data['modified_by'] = this.modifiedBy;
    data['cause_date'] = this.causeDate;
    data['cause_time'] = this.causeTime;
    data['jurisdiction'] = this.jurisdiction;
    data['technical_members'] = this.technicalMembers;
    data['services'] = this.services;
    data['judge'] = this.judge;
    if (this.causeDetails != null) {
      data['cause_details'] = this.causeDetails.map((v) => v.toJson()).toList();
    }
    data['attachment'] = this.attachment;
    return data;
  }
}

class CauseDetails {
  List<String> sno;
  List<String> caseType;
  List<String> caseNumber;
  List<String> caseYear;
  List<String> services;
  List<String> bench;
  List<String> pettioner;
  List<String> respondent;
  List<String> advocate;

  CauseDetails(
      {this.sno,
      this.caseType,
      this.caseNumber,
      this.caseYear,
      this.services,
      this.bench,
      this.pettioner,
      this.respondent,
      this.advocate});

  CauseDetails.fromJson(Map<String, dynamic> json) {
    //sno = json['sno'].cast<String>();
    if (json['sno'] != null) {
      sno = <String>[];
      json['sno'].forEach((v) {
        sno.add(v as String);
      });
    } else {
      sno = [];
    }
    //caseType = json['case_type'].cast<String>();
    if (json['case_type'] != null) {
      caseType = <String>[];
      json['case_type'].forEach((v) {
        caseType.add(v as String);
      });
    } else {
      caseType = [];
    }
    // caseNumber = json['case_number'].cast<String>();
    if (json['case_number'] != null) {
      caseNumber = <String>[];
      json['case_number'].forEach((v) {
        caseNumber.add(v as String);
      });
    } else {
      caseNumber = [];
    }

    //caseYear = json['case_year'].cast<String>();
    if (json['case_year'] != null) {
      caseYear = <String>[];
      json['case_year'].forEach((v) {
        caseYear.add(v as String);
      });
    } else {
      caseYear = [];
    }

    //services = json['services'].cast<String>();

    if (json['services'] != null) {
      services = <String>[];
      json['services'].forEach((v) {
        services.add(v as String);
      });
    } else {
      services = [];
    }
    // jurisdiction = json['jurisdiction'].cast<String>();

    if (json['bench'] != null) {
      bench = <String>[];
      json['bench'].forEach((v) {
        bench.add(v as String);
      });
    } else {
      bench = [];
    }
    // pettioner = json['pettioner'].cast<String>();
    if (json['pettioner'] != null) {
      pettioner = <String>[];
      json['pettioner'].forEach((v) {
        pettioner.add(v as String);
      });
    } else {
      pettioner = [];
    }
    // respondent = json['respondent'].cast<String>();
    if (json['respondent'] != null) {
      respondent = <String>[];
      json['respondent'].forEach((v) {
        respondent.add(v as String);
      });
    } else {
      respondent = [];
    }
    // advocate = json['advocate'].cast<String>();
    if (json['advocate'] != null) {
      advocate = <String>[];
      json['advocate'].forEach((v) {
        advocate.add(v as String);
      });
    } else {
      advocate = [];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sno'] = this.sno;
    data['case_type'] = this.caseType;
    data['case_number'] = this.caseNumber;
    data['case_year'] = this.caseYear;
    data['services'] = this.services;
    data['bench'] = this.bench;
    data['pettioner'] = this.pettioner;
    data['respondent'] = this.respondent;
    data['advocate'] = this.advocate;
    return data;
  }
}

// if (json['subOrderId'] != null) {
//       subOrderId = <String>[];
//       json['subOrderId'].forEach((v) {
//         subOrderId.add(v as String);
//       });
//     } else {
//       subOrderId = [];
//     }
