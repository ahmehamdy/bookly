class Dimensions {
  String? height;
  String? width;
  String? thickness;

  Dimensions({this.height, this.width, this.thickness});

  Dimensions.fromJson(Map<String, dynamic> json) {
    height = json['height'];
    width = json['width'];
    thickness = json['thickness'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['height'] = this.height;
    data['width'] = this.width;
    data['thickness'] = this.thickness;
    return data;
  }
}