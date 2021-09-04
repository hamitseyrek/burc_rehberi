class Burc {
  final String _burcName;
  final String _burcDate;
  final String _burcDetails;
  final String _burcThumb;
  final String _burcImage;

  Burc(this._burcName, this._burcDate, this._burcDetails, this._burcImage, this._burcThumb);

get burcName => this._burcName;
get burcDate => this._burcDate;
get burcDetails => this._burcDetails;
get burcThumb => this._burcThumb;
get burcImage => this._burcImage;

  @override
  String toString() {
    return '$_burcImage';
  }
}