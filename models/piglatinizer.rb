class PigLatinizer
  
  def piglatinize(word)
    pigword = word.split('')
    if pigword[0] == (/aeiouAEIOU/)
      pigword.push(way)
    else
      if pigword[0] == (/[^aeiouAEIOU]/) && pigword[1] == (/[^aeiouAEIOU]/)
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
    user_phrase.split(' ').collect {|word| self.piglatinize(word)}.join('')
  end
end