class PigLatinizer
  
  def piglatinize(word)
    pigword = word.split('')
    if /\A[aeiouAEIOU]/.match(word)
      pigword.push('way')
      pigword.join('')
    else
      if /[^aeiouAEIOU]/.match(pigword[0])
        append = word[0,1].join('') + 'ay'
        word.slice(2, (word.length + 1)).push(append).join('')
      else word[0] == (/[^aeiouAEIOU]/) && word[1] != (/[^aeiouAEIOU]/)
        word.push(word[0] + 'ay')
        word.shift
        word.join('')
      end
    end
    pigword
  end
  
  def pg_sentence(user_phrase)
    pgphrase = user_phrase.split(' ').collect {|word| self.piglatinize(word)}
    pgphrase.join('')
  end
end