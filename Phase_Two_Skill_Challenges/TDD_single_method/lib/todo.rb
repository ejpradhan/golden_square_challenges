def todo(text)
  fail "This is not a string, cannot check!" if !text.is_a? String
  fail "No text entered!" if text.empty?
  if text.include?("#TODO")
    true
  else
    false
  end
end
