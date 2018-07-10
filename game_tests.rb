require 'minitest/autorun'
require_relative 'game.rb'

class Hangman_test < Minitest::Test
	def test_air_for_correct_guesses_winner
  		word = "air"
  		letter = ['a','p','i','e','r']
   		assert_equal("You won", game(word,letter))
 	end

    def test_sucker_for_all_correct_guesses
    	word = "sucker"
        letter = ["s",'e','k','u','c','r']
        assert_equal("You won", game(word,letter))
    end

    def test_apples_for_all_correct_guesses
    	word = "apples"
        letter = ['a','p','p','l','e','s']
        assert_equal("You won", game(word,letter))
    end

    def test_sucker_for_6_invalid_guesses
        word = "sucker"
        letter = ["s",'r','t','f','a','u','d','w','q']
        assert_equal("You lose", game(word,letter))
    end

    def test_sucker_for_3_incorrect_3_correct
    	word = "sucker"
        letter = ["s",'q','k','t','y','r']
        assert_equal("Correct letter. Keep guessing", game(word,letter))
    end

    def test_smiles_for_1_incorrect_5_correct
    	word = "smiles"
        letter = ["s",'q','m','e','l','i']
        assert_equal("Correct letter. Keep guessing", game(word,letter))
    end

    def test_sucker_for_1_incorrect_5_correct
    	word = "smiles"
        letter = ["s",'q','m','e','l','i']
        assert_equal("Correct letter. Keep guessing", game(word,letter))
    end

    def test_sucker_for_single_letter
    	word = "smiles"
        letter = ["s"]
        assert_equal("Correct letter. Keep guessing", game(word,letter))
    end
end