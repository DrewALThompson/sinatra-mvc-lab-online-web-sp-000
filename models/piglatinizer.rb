class PigLatinizer
  
  def piglatinize(word)
    if word == (/\A[aeiouAEIOU]/)
      word.split('')
      word.push('way')
      word.join('')
    else
      if word[0] == (/[^aeiouAEIOU]/) && word[1] == (/[^aeiouAEIOU]/)
        append = pigword[0,1].join('') + 'ay'
        pigword.slice(2, (pigword.length + 1)).push(append).join('')
      else pigword[0] == (/[^aeiouAEIOU]/) && pigword[1] != (/[^aeiouAEIOU]/)
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