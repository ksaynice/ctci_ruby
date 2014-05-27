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

teststringtrue = "woca"
teststringfalse = "wocacacaca"

funclist = ["has_all_unique_chars_no_ds"]

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
end
