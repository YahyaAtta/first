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
List<string> splitString(String line , String spereator="//")
{
  String sWord;
  int pos = 0 ;
    List<String> listOfString = [];
    while((pos = line.indexof(Spereator))!=-1)
    {
     sWord = Line.substr(0,pos) ; 
        if(sWord!="")
        {
       listOfString.add(sWord);
        }
    line.replaceRange(0,pos + sperator.length,'');
    }
    if(line!="")
    {
      listOfString.add(line) ;
    }
    return listOfString;
}
void main() {
String Line = "A//B//C" ; 
print(splitString(Line));
}
