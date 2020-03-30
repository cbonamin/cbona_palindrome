require "cbona_palindrome/version"

module CbonaPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-zA-Z0-9]/).join.downcase
    end
end

class String
  include CbonaPalindrome
end

class Integer
  include CbonaPalindrome
end
