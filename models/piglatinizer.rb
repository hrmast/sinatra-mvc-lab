require 'pry'

class PigLatinizer 
    attr_reader :phrase

    def initialize
        
    end

    def piglatinize(phrase)
        consonant = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w", "x", "y", "z"]
        vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o","u"]
        pairings = ["Th", "th", "Pl", "pl", "Pr", "pr", "sk", "Sk"]
        three = ["Spr", "spr", "Str", "str"]

        @sentence = phrase.split(" ")
        
        @latinized = []

        @sentence.collect do |word|
            pair = word[0...2]
            three_letters = word[0...3]
    
            if three.include?(three_letters)
                x = word.length
                @latinized << word[3...x] + word[0...3] + "ay"
            elsif pairings.include?(pair)
                x = word.length
                @latinized << word[2...x] + word[0...2] + "ay"
            elsif vowels.include?(word[0])
                @latinized << word + "way"
            else consonant.include?(word[0])
                x = word.length
                @latinized << word[1...x] + word[0] + "ay"  
            end
            
        end
        @latinized.join(" ")

    end
end   