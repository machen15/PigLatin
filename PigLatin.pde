public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public int findFirstVowel(String sWord)
  for(int i = 0; i < sWord.length(); i++)
  {
   if(sWord.substring(i,i+1).equals("a") == true || sWord.substring(i,i+1).equals("e") == true || sWord.substring(i,i+1).equals("i") == true || sWord.substring(i,i+1).equals("o") == true || sWord.substring(i,i+1).equals("u") == true)
      return i;
  }
  return -1;
}

public String pigLatin(String sWord)
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if(sWord.substring(0,2).equals("qu"))
  {
    return sWord.substring(2) + sWord.substring(0,2) + "ay";
  }
  else if(findFirstVowel(sWord) > 0)
  {
    int vowel1 = findFirstVowel(sWord);
    int length = sWord.length();
    return sWord.substring(vowel1,length) + sWord.substring(0,vowel1) + "ay";
  }
  else
  {
    return "ERROR!";
  }
  
}
