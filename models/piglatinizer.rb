class PigLatinizer
  
  def piglatinize(word)
    if word == (/\A[aeiouAEIOU]/)
      word.split('')
      word.push('way')
      word.join('')
    else
      if word[0] == (/[^aeiouAEIOU]/) && word[1] == (/[^aeiouAEIOU]/)
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