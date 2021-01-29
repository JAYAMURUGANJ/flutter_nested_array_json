class WorkShopDetails {
  String id;
  String createdDate;
  String services;
  String name;
  List<WorkDetails> workDetails;
  String totalLeave;

  WorkShopDetails(
      {this.id,
      this.createdDate,
      this.services,
      this.name,
      this.workDetails,
      this.totalLeave});

  WorkShopDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdDate = json['created_date'];
    services = json['services'];
    name = json['name'];
    if (json['work_details'] != null) {
      workDetails = new List<WorkDetails>();
      json['work_details'].forEach((v) {
        workDetails.add(new WorkDetails.fromJson(v));
      });
    }
    totalLeave = json['total_leave'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_date'] = this.createdDate;
    data['services'] = this.services;
    data['name'] = this.name;
    if (this.workDetails != null) {
      data['work_details'] = this.workDetails.map((v) => v.toJson()).toList();
    }
    data['total_leave'] = this.totalLeave;
    return data;
  }
}

class WorkDetails {
  Bike0 bike0;
  Bike0 bike1;

  WorkDetails({this.bike0, this.bike1});

  WorkDetails.fromJson(Map<String, dynamic> json) {
    bike0 = json['bike0'] != null ? new Bike0.fromJson(json['bike0']) : null;
    bike1 = json['bike1'] != null ? new Bike0.fromJson(json['bike1']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bike0 != null) {
      data['bike0'] = this.bike0.toJson();
    }
    if (this.bike1 != null) {
      data['bike1'] = this.bike1.toJson();
    }
    return data;
  }
}

class Bike0 {
  String place;
  String bikeModel;
  String ownerName;

  Bike0({this.place, this.bikeModel, this.ownerName});

  Bike0.fromJson(Map<String, dynamic> json) {
    place = json['place'];
    bikeModel = json['bike_model'];
    ownerName = json['owner_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['place'] = this.place;
    data['bike_model'] = this.bikeModel;
    data['owner_name'] = this.ownerName;
    return data;
  }
}
