class PigLatinizer
  
  def piglatinize(word)
    if /\A[aeiouAEIOU]/.match(word)
      pigword = word.split('')
      pigword.push('way')
      pigword.join('')
    else
      if /[^aeiouAEIOU]/.match(pigword[0]) && /[^aeiouAEIOU]/.match(pigword[1])
        pigword = word.split('')
        append = "#{pigword[0] + pigword[1]}ay"
        edited = pigword.drop(2)
        edited.push(append)
        edited.join('')
      else 
        pigword = word.split('')
        pigword.push(word[0] + 'ay')
        pigword.shift
        pigword.join('')
      end
    end
    pigword || edited
  end
  
  def pg_sentence(user_phrase)
    pgphrase = user_phrase.split(' ').collect {|word| self.piglatinize(word)}
    pgphrase.join('')
  end
end