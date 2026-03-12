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

