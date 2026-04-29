extension StringValidation on String{
  bool get isValidEmail {
    if(this.contains("@") && this.contains(".")){
      return true;
    }
    return false;
  }
}


