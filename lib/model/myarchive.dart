//date, type, displayName, gender, age, uploadImage, obsResult
class Archive {
  int _id;
  String _date;
  String _type;
  String _displayName;
  String _gender;
  String _age;
  String _obsResult;
  String _uploadImage;
  String _conclusion;

  Archive(this._date, this._type, this._displayName, this._gender, this._age,
      this._obsResult,
      [this._uploadImage, this._conclusion]);
  Archive.withId(this._id, this._date, this._type, this._displayName,
      this._gender, this._age, this._obsResult,
      [this._uploadImage, this._conclusion]);

  int get id => _id;
  String get date => _date;
  String get type => _type;
  String get displayName => _displayName;
  String get gender => _gender;
  String get age => _age;
  String get obsResult => _obsResult;
  String get uploadImage => _uploadImage;
  String get conclusion => _conclusion;

  // ignore: unnecessary_getters_setters
  set date(String newDate) {
    _date = newDate;
  }

  // ignore: unnecessary_getters_setters
  set type(String newType) {
    _type = newType;
  }

  set displayName(String newDisplayName) {
    if (newDisplayName.length <= 30) {
      _displayName = newDisplayName;
    }
  }

  // ignore: unnecessary_getters_setters
  set gender(String newGender) {
    _gender = newGender;
  }

  set age(String newAge) {
    _age = newAge;
  }

  // ignore: unnecessary_getters_setters
  set obsResult(String newObsResult) {
    _obsResult = newObsResult;
  }

  // ignore: unnecessary_getters_setters
  set uploadImage(String newUploadImage) {
    _uploadImage = newUploadImage;
  }

  // ignore: unnecessary_getters_setters
  set conclusion(String newConclusion) {
    _conclusion = newConclusion;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['date'] = _date;
    map['type'] = _type;
    map['displayName'] = _displayName;
    map['gender'] = _gender;
    map['age'] = _age;
    map['obsResult'] = _obsResult;
    map['uploadImage'] = _uploadImage;
    map['conclusion'] = _conclusion;
    if (_id != null) {
      map['id'] = _id;
    }
    return map;
  }

  Archive.fromObject(dynamic o) {
    this._id = o['id'];
    this._date = o['date'];
    this._type = o['type'];
    this._displayName = o['displayName'];
    this._gender = o['gender'];
    this._age = o['age'];
    this._obsResult = o['obsResult'];
    this._uploadImage = o['uploadImage'];
    this._conclusion = o['conclusion'];
  }
}
