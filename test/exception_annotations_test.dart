import 'package:oxio_exceptions/exceptions.dart';

class FileDoesNotExistError implements Exception {

  @Display(Display.PUBLIC) // Acl ?
  final String _fullPath;

  @Display(Display.DEBUG)
  final String _relativePath;

  FileDoesNotExistError(this._fullPath, this._relativePath);
}

void main() {
  var p = new PlainTextExceptionPrinter();
  p.dump(new FileDoesNotExistError("/tmp/foo.txt", "foo.txt"));
}