class PigLatinizer
  
  def piglatinize(word)
    word.split('')
    if word[0] == (/aeiouAEIOU/)
      word.push(way)
    else
      if word[0] == (/[^aeiouAEIOU]/) && word[1] == (/[^aeiouAEIOU]/)
        append = word[0,1].join('') + 'ay'
        word.slice(2, (word.length + 1)).push(append).join('')
      else
        word.push(word[0] + 'ay').shift.join('')
      end
    end
    word
  end
  
  def pg_sentence(text)
    text.split(' ').each {|word| word.
  end
end