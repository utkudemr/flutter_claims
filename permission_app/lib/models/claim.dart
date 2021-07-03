class Claim {
  final String type;
  final bool value;

  Claim({ this.type, this.value});

  factory Claim.fromJson(Map<String, dynamic> json) {
    return Claim(type: json['type'], value: json['value']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['value'] = this.value;
    return data;
  }
}
