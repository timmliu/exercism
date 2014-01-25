class Bob

  def hey(arg)
    if prattling_on?(arg)
      'Sure.'
    elsif using_acronyms_in_regular_speech?(arg)
      'Whatever.'
    elsif stating_something?(arg)
      'Whatever.'
    elsif talking_forcefully?(arg)
      'Whatever.'
    elsif shouting_with_special_characters?(arg)
      'Woah, chill out!'
    elsif shouting_numbers?(arg)
      'Woah, chill out!'
    elsif shouting?(arg)
      'Woah, chill out!'
    elsif shouting_with_no_exclamation_mark?(arg)
      'Woah, chill out!'
    elsif on_multiple_line_questions?(arg)
      'Whatever.'
    elsif forceful_questions?(arg)
      'Woah, chill out!'
    elsif question_with_only_numbers?(arg)
      'Sure.'
    elsif asking_a_numeric_question?(arg)
      'Sure.'
    elsif statement_containing_question_mark(arg)
      'Whatever.'
    elsif only_numbers?(arg)
      'Whatever.'
    elsif asking_a_question?(arg)
      'Sure.'
    elsif silence?(arg)
      'Fine. Be that way!'
    elsif prolonged_silence?(arg)
      'Fine. Be that way!'
    else
      'Something is wrong.'
    end
  end

  private

  def all_uppercase?(s)
    s == s.upcase && !only_numeric?(s)
  end

  def has_acronym?(s)
    s =~ /[A-Z]{2,}/ && s =~ /[a-z]/
  end

  def has_at_least_one_line_break?(s)
    s =~ /.+\n+.+/ && has_question_mark?(s)
  end

  def has_letters?(s)
    s =~ /[a-zA-Z]/
  end

  def has_at_least_3_sentences?(s)
    s =~ /\A[a-zA-Z0-9\s]+(!|\?|\.)+\s*[a-zA-Z0-9\s]+(!|\?|\.)+\s*[a-zA-Z0-9\s]+(!|\?|\.)\z/
  end

  def has_numeric?(s)
    s =~ /\d/
  end

  def has_question_mark?(s)
    s =~ /\?/
  end

  def has_special_characters?(s)
    s =~ /\w*(!|%|\^|\*|@|#|\$|\(|\))+/
  end

  def last_letter(s)
    s.slice(-1,1)
  end

  def only_numeric?(s)
    has_numeric?(s) && !has_letters?(s)
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

  def question_with_only_numbers?(s)
    only_numeric?(s) && last_letter(s) == "?"
  end

  def shouting_with_special_characters?(s)
    has_special_characters?(s) && last_letter(s) == "!"
  end

  def shouting_with_no_exclamation_mark?(s)
    all_uppercase?(s) && last_letter(s) != "!" && has_letters?(s)
  end

  def statement_containing_question_mark(s)
    has_question_mark?(s) && last_letter(s) == "."
  end

  def prattling_on?(s)
    has_at_least_3_sentences?(s)
  end

  def silence?(s)
    s.empty?
  end

  def prolonged_silence?(s)
    s =~ /\A\s*\z/
  end

  def on_multiple_line_questions?(s)
    has_at_least_one_line_break?(s)
  end
end

class Remark
end

class Helper
end
