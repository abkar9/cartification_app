
class UserInformation {
  String HOLDER_ID;
  String HOLDER_NAME;
  String MOBILE;
  String DESCRIBED;
  String FAMILY_NO;
  String EXPERIANCE;
  String GENDER;
  String STATUS;
  String SHARE_COUNT;
  String HOLDER_CODE;
  String ID_NO2;
  String JOB_NO;
  String IJ_JOB_DESC;
  String QUALIFICATION;
  String IQ_DESC;
  String NATIONALITY_ID;
  String COUNTRY_DESC;
  String CITY_NO;
  String CITY_DESC;
  String BIRTH_DATE;
  String DELEGATE_ID;
  String BOARD_MEMBER;
  String SEASON_NO;
  String ADDRESS;
  String CERTIFICATE_NO;
  String CERTIFICATE_DATE;
  String CERTIFICATE_TDATE;
  String ID_DATE;
  String SHARE_STATUS;
  String SHARES_FROM;

UserInformation({
  this.HOLDER_ID = '',
  this.HOLDER_NAME = '',
  this.MOBILE = '',
  this.DESCRIBED = '',
  this.FAMILY_NO = '',
  this.EXPERIANCE='',
  this.GENDER='',
  this.STATUS='',
  this.SHARE_COUNT='',
  this.HOLDER_CODE='',
  this.ID_NO2='',
  this.JOB_NO='',
  this.IJ_JOB_DESC='',
  this.QUALIFICATION='',
  this.IQ_DESC='',
  this.NATIONALITY_ID='',
  this.COUNTRY_DESC='',
  this.CITY_NO='',
  this.CITY_DESC='',
  this.BIRTH_DATE='',
  this.DELEGATE_ID='',
  this.BOARD_MEMBER='',
  this.SEASON_NO='',
  this.ADDRESS='',
  this.CERTIFICATE_NO='',
  this.CERTIFICATE_DATE='',
  this.CERTIFICATE_TDATE='',
  this.ID_DATE='',
  this.SHARE_STATUS='',
  this.SHARES_FROM='',



});
  factory UserInformation.fromDocumentSnapshot(dynamic doc) {
    var data = doc;

    return UserInformation(
      HOLDER_ID : data['HOLDER_ID'],
      HOLDER_NAME: data['HOLDER_NAME'],
      MOBILE: data['MOBILE'],
      DESCRIBED: data['DESCRIBED'],
      FAMILY_NO: data['FAMILY_NO'],
      EXPERIANCE: data['EXPERIANCE'],
      GENDER: data['GENDER'],
      STATUS: data['STATUS'],
      SHARE_COUNT: data['SHARE_COUNT'],
      HOLDER_CODE: data['HOLDER_CODE'],
      ID_NO2: data['ID_NO2'],
      JOB_NO: data['JOB_NO'],
      IJ_JOB_DESC: data['IJ_JOB_DESC'],
      QUALIFICATION: data['QUALIFICATION'],
      IQ_DESC:data['IQ_DESC'],
      NATIONALITY_ID: data['NATIONALITY_ID'],
      COUNTRY_DESC: data['COUNTRY_DESC'],
      CITY_NO: data['CITY_NO'],
      CITY_DESC: data['CITY_DESC'],
      BIRTH_DATE: data['BIRTH_DATE'],
      DELEGATE_ID: data['DELEGATE_ID'],
      BOARD_MEMBER: data['BOARD_MEMBER'],
      SEASON_NO: data['SEASON_NO'],
      ADDRESS: data['ADDRESS'],
      CERTIFICATE_NO:data['CERTIFICATE_NO'],
      CERTIFICATE_DATE: data['CERTIFICATE_DATE'],
      CERTIFICATE_TDATE: data['CERTIFICATE_TDATE'],
      ID_DATE:data['ID_DATE'],
      SHARE_STATUS:data['SHARE_STATUS'],
      SHARES_FROM:data['SHARES_FROM'],
    );
  }
  factory UserInformation.fromMap(Map<String, dynamic> data) {
    return UserInformation(
      HOLDER_ID : data['HOLDER_ID'],
      HOLDER_NAME: data['HOLDER_NAME'],
      MOBILE: data['MOBILE'],
      DESCRIBED: data['DESCRIBED'],
      FAMILY_NO: data['FAMILY_NO'],
      EXPERIANCE: data['EXPERIANCE'],
      GENDER: data['GENDER'],
      STATUS: data['STATUS'],
      SHARE_COUNT: data['SHARE_COUNT'],
      HOLDER_CODE: data['HOLDER_CODE'],
      ID_NO2: data['ID_NO2'],
      JOB_NO: data['JOB_NO'],
      IJ_JOB_DESC: data['IJ_JOB_DESC'],
      QUALIFICATION: data['QUALIFICATION'],
      IQ_DESC:data['IQ_DESC'],
      NATIONALITY_ID: data['NATIONALITY_ID'],
      COUNTRY_DESC: data['COUNTRY_DESC'],
      CITY_NO: data['CITY_NO'],
      CITY_DESC: data['CITY_DESC'],
      BIRTH_DATE: data['BIRTH_DATE'],
      DELEGATE_ID: data['DELEGATE_ID'],
      BOARD_MEMBER: data['BOARD_MEMBER'],
      SEASON_NO: data['SEASON_NO'],
      ADDRESS: data['ADDRESS'],
      CERTIFICATE_NO:data['CERTIFICATE_NO'],
      CERTIFICATE_DATE: data['CERTIFICATE_DATE'],
      CERTIFICATE_TDATE: data['CERTIFICATE_TDATE'],
      ID_DATE:data['ID_DATE'],
      SHARE_STATUS:data['SHARE_STATUS'],
      SHARES_FROM:data['SHARES_FROM'],
    );
  }

  Map<String, dynamic> mapToJosn() => {
    'HOLDER_ID': HOLDER_ID,
    'HOLDER_NAME': HOLDER_NAME,
    'MOBILE': MOBILE,
    'DESCRIBED': DESCRIBED,
    'FAMILY_NO': FAMILY_NO,
    'EXPERIANCE': EXPERIANCE,
    'GENDER': GENDER,
    'STATUS': STATUS,
    'SHARE_COUNT': SHARE_COUNT,
    'HOLDER_CODE': HOLDER_CODE,
    'ID_NO2': ID_NO2,
    'JOB_NO': JOB_NO,
    'IJ_JOB_DESC': IJ_JOB_DESC,
    'QUALIFICATION': QUALIFICATION,
    'IQ_DESC': IQ_DESC,
    'NATIONALITY_ID': NATIONALITY_ID,
    'COUNTRY_DESC': COUNTRY_DESC,
    'CITY_NO': CITY_NO,
    'CITY_DESC': CITY_DESC,
    'BIRTH_DATE': BIRTH_DATE,
    'DELEGATE_ID': DELEGATE_ID,
    'BOARD_MEMBER': BOARD_MEMBER,
    'SEASON_NO': SEASON_NO,
    'ADDRESS': ADDRESS,
    'CERTIFICATE_NO': CERTIFICATE_NO,
    'CERTIFICATE_DATE': CERTIFICATE_DATE,
    'CERTIFICATE_TDATE': CERTIFICATE_TDATE,
    'ID_DATE': ID_DATE,
    'SHARE_STATUS': SHARE_STATUS,
    'SHARES_FROM': SHARES_FROM,
  };
}
