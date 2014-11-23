part of oxio.exceptions;

abstract class ExceptionPrinter {

  void dump(Exception e) {
    print(format(e));
  }

  String format(Exception e);
}

class PlainTextExceptionPrinter extends ExceptionPrinter {

  String format(Exception e) {
    return reflect(e).type.qualifiedName.toString();
  }
}