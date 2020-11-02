class PigLatinizer
  
  def piglatinize(word)
    pigword = word.split('')
    if /\A[aeiouAEIOU]/.match(word)
      pigword.push('way')
      pigword.join('')
    else
      if /[^aeiouAEIOU]/.match(pigword[0]) && /[^aeiouAEIOU]/.match(pigword[1])
        append = "#{pigword[0] + pigword[1]} + ay"
        pigword.slice(2, (word.length + 1))
        pigword.push(append)
        pigword.join('')
      else 
        pigword.push(word[0] + 'ay')
        pigword.shift
        pigword.join('')
      end
    end
    pigword
  end
  
  def pg_sentence(user_phrase)
    pgphrase = user_phrase.split(' ').collect {|word| self.piglatinize(word)}
    pgphrase.join('')
  end
end