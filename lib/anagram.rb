require 'pry'

class Anagram
    attr_accessor :word

    @@all = []

    def initialize(word)
        @word = word
        @@all << word
    end

    def match(words)
        matched_words = []
        words.each do |word|
            sorted_input = word.split("").sort
            sorted_self = self.word.split("").sort
            if sorted_input === sorted_self
                matched_words << word
                else
                []
            end
        end
        matched_words
    end

end