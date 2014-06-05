def has_all_unique_chars_no_ds(input_sting)
  # no data structures
  # O(n^2)
  input_sting.each_char do |char1|
    found_count = 0
    input_sting.each_char do |char2|
      if char1 == char2
        found_count += 1
      end
      return false if found_count > 1
    end
  end
  true
end

def has_all_unique_chars_list(input_sting)
  # using a list
  # O(n^2)
  char_list = []
  input_sting.each_char do |char|
    if char_list.include?(char)
      return false
    else
      char_list << char
    end
  end
  true
end

def has_all_unique_chars_list_ord(input_sting)
  # another way to use a list
  # O(n)
  if input_sting.size > 256
    return false
  else
    char_list = [false] * 256
    input_sting.each_char do |char|
      if char_list[char.ord]
        return false
      else
        char_list[char.ord] = true
      end
    end
  end
  true
end

def has_all_unique_chars_hash(input_string)
  #using a hash table (here as a dictionary of key/values)
  #O(1)
  char_hash = {}
  input_string.each_char do |char|
    if char_hash[char]
      return false
    else
      char_hash[char] = true
    end
  end
  true
end

def has_all_unique_chars_set(input_string)
  input_string.split(//).uniq.length == input_string.length
end


# ========== TEST ==========
teststringtrue = "woca"
teststringfalse = "wocacacaca"

funclist = %w(has_all_unique_chars_no_ds has_all_unique_chars_list has_all_unique_chars_list_ord has_all_unique_chars_hash has_all_unique_chars_set)

funclist.each do |f|
  puts ">>> Testing function -#{f}- <<<"
  if send(f, teststringtrue)
    puts "√ True test case on -#{f}- passed"
  else
    puts "× True test case on -#{f}- failed"
  end

  unless send(f, teststringfalse)
    puts "√ False test case on -#{f}- passed"
  else
    puts "× False test case on -#{f}- passed"
  end
  puts "------------------------------"
end
