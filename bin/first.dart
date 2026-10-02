// Old Code
/*
void main() {
    String text = "A//B//C" ; 
    String result = "" ; 
  for(int i = 0 ; i<text.length ;i++) {
    if(text[i] != "/") {
  result+= text[i]  ; 
    }
    else {
        if(text[i] == text[i+1]) {
            result+= "\n" ; 
        }
    }
  }
  print(result) ;  
} 
*/
// void main() {
//   Pointer<Utf8> strPtr = "Welcome To C++ From Dart!".toNativeUtf8();
//   String text = strPtr.toDartString();
//   print(text);
//   malloc.free(strPtr);
// }
List<String> splitString(String line, {String spereator = "//"}) {
  String sWord;
  int? pos = 0;
  List<String> listOfString = [];
  while ((pos = line.indexOf(spereator)) != -1) {
    sWord = line.substring(0, pos);
    if (sWord != "") {
      listOfString.add(sWord);
    }
    line = line.replaceRange(0, pos + spereator.length, "");
  }
  if (line != "") {
    listOfString.add(line);
  }
  return listOfString;
}

void main() {
  String line = "A//B//C";
  print(line);
  List<String> listOfString = splitString(line);
  print(listOfString);
  for (String string in listOfString) {
    print(string);
  }
}
