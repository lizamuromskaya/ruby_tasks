# frozen_string_literal: false

# Define a method starts_with_consonant?(s)
# that takes a string and returns true if
# it starts with a consonant and false otherwise.
# (For our purposes, a consonant is any letter other
# than A, E, I, O, U.) NOTE: be sure it works for both
# upper and lower case and for nonletters
FIRSTLETTER = /[B-Db-dF-Hf-hJ-Nj-nP-Tp-tV-Zv-z]/.freeze

def starts_with_consonant?(s)
  FIRSTLETTER.match?(s[0])
end
