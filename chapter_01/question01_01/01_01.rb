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

p has_all_unique_chars_no_ds "woca"
p has_all_unique_chars_no_ds "wocacacaca"
