abstract class Check {

  bool checked;

  Check(this.checked);

  check(){
    checked = true;
  }

  uncheck(){
    checked = false;
  }
    
}