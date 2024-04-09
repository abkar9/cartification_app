
class UserInformation {
  String Name;
  String Job_Title;


UserInformation({
  this.Name = '',
  this.Job_Title = '',



});
  factory UserInformation.fromDocumentSnapshot(dynamic doc) {
    var data = doc;

    return UserInformation(
      Name : data['HOLDER_ID'],
      Job_Title: data['HOLDER_NAME'],

    );
  }
  factory UserInformation.fromMap(Map<String, dynamic> data) {
    return UserInformation(
      Name : data['HOLDER_ID'],
      Job_Title: data['HOLDER_NAME'],

    );
  }

  Map<String, dynamic> mapToJosn() => {
    'HOLDER_ID': Name,
    'HOLDER_NAME': Job_Title,

  };
}
