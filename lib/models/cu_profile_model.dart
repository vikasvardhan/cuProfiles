class CUProfileModel {
  List<Data>? data;

  CUProfileModel({this.data});

  CUProfileModel.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != null) {
      data = <Data>[];
      json['Data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['Data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? cdsId;
  String? name;
  String? executive;
  String? title;
  String? city;
  String? state;
  String? imageLocation;
  String? titleUrl;
  int? charterNumber;
  String? companyName;
  String? address;
  String? address2;
  String? stateCode;
  String? stateId;
  int? userCount;
  int? adminCount;
  bool? selected;
  int? companyTypeId;
  String? companyTypeName;
  String? clientStatusName;

  Data({
    this.cdsId,
    this.name,
    this.executive,
    this.title,
    this.city,
    this.state,
    this.imageLocation,
    this.titleUrl,
    this.charterNumber,
    this.companyName,
    this.address,
    this.address2,
    this.stateCode,
    this.stateId,
    this.userCount,
    this.adminCount,
    this.selected,
    this.companyTypeId,
    this.companyTypeName,
    this.clientStatusName,
  });

  Data.fromJson(Map<String, dynamic> json) {
    cdsId = json['CdsId'];
    name = json['Name'];
    executive = json['Executive'];
    title = json['Title'];
    city = json['City'];
    state = json['State'];
    imageLocation = json['ImageLocation'];
    titleUrl = json['TitleUrl'];
    charterNumber = json['CharterNumber'];
    companyName = json['CompanyName'];
    address = json['Address'];
    address2 = json['Address2'];
    stateCode = json['StateCode'];
    stateId = json['StateId'];
    userCount = json['UserCount'];
    adminCount = json['AdminCount'];
    selected = json['Selected'];
    companyTypeId = json['CompanyTypeId'];
    companyTypeName = json['CompanyTypeName'];
    clientStatusName = json['ClientStatusName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CdsId'] = cdsId;
    data['Name'] = name;
    data['Executive'] = executive;
    data['Title'] = title;
    data['City'] = city;
    data['State'] = state;
    data['ImageLocation'] = imageLocation;
    data['TitleUrl'] = titleUrl;
    data['CharterNumber'] = charterNumber;
    data['CompanyName'] = companyName;
    data['Address'] = address;
    data['Address2'] = address2;
    data['StateCode'] = stateCode;
    data['StateId'] = stateId;
    data['UserCount'] = userCount;
    data['AdminCount'] = adminCount;
    data['Selected'] = selected;
    data['CompanyTypeId'] = companyTypeId;
    data['CompanyTypeName'] = companyTypeName;
    data['ClientStatusName'] = clientStatusName;
    return data;
  }
}
