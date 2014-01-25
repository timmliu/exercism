class Bob

  def hey(arg)
    if using_acronyms_in_regular_speech?(arg)
      'Whatever.'
    elsif stating_something?(arg)
      'Whatever.'
    elsif talking_forcefully?(arg)
      'Whatever.'
    elsif shouting_numbers?(arg)
      'Woah, chill out!'
    elsif shouting?(arg)
      'Woah, chill out!'
    elsif forceful_questions?(arg)
      'Woah, chill out!'
    elsif only_numbers?(arg)
      'Whatever.'
    elsif asking_a_numeric_question?(arg)
      'Sure.'
    elsif asking_a_question?(arg)
      'Sure.'
    else
      'Whatever.'
    end
  end

  private

  def all_uppercase?(s)
    s == s.upcase
  end

  def has_acronym?(s)
    s =~ /[A-Z]{2,}/ && s =~ /[a-z]/
  end

  def has_numeric?(s)
    s =~ /\d/
  end

  def last_letter(s)
    s.slice(-1,1)
  end

  def only_numeric?(s)
    s =~ /^[0-9]+\z/
  end

  def stating_something?(s)
    last_letter(s) == "."
  end

  def shouting?(s)
    all_uppercase?(s) && last_letter(s) == "!"
  end

  def asking_a_question?(s)
    last_letter(s) == "?"
  end

  def asking_a_numeric_question?(s)
    has_numeric?(s) && last_letter(s) == "?"
  end

  def talking_forcefully?(s)
    !all_uppercase?(s) && last_letter(s) == "!"
  end

  def using_acronyms_in_regular_speech?(s)
    has_acronym?(s)
  end

  def forceful_questions?(s)
    all_uppercase?(s) && last_letter(s) == "?"
  end

  def shouting_numbers?(s)
    has_numeric?(s) && all_uppercase?(s) && last_letter(s) == "!"
  end

  def only_numbers?(s)
    only_numeric?(s)
  end

  def question_with_only_numbers
  end

  def shouting_with_special_characters
  end

  def shouting_with_no_exclamation_mark
  end

  def statement_containing_question_mark
  end

  def prattling_on
  end

  def silence
  end

  def prolonged_silence
  end

  def on_multiple_line_questions
  end
end

class Remark
end
