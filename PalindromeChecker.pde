public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String w = new String();
  for(int i = 0; i <= word.length()-1; i++)
  {
    if(Character.isLetter(word.charAt(i)) == true){
        w = w + word.substring(i, i+1).toLowerCase();
      }
  }
  if(reverse(word).equals(w))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length()-1; i >= 0; i--){
      if(Character.isLetter(str.charAt(i)) == true){
        sNew = sNew + str.substring(i, i + 1).toLowerCase();
      }
    } 
    return sNew;
}


