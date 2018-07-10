def game(word,letter)
	str = []
	letter_array = []
	trashcan = []
	new_array = []
	result = ""
	chosen_word = word.split(//)
	letter.each do |l|
		if chosen_word.include?(l) == true
				letter_array << l
				if chosen_word.length == letter_array.length
					result = "You won"
				else
					result = "Correct letter. Keep guessing"
				end  
		else chosen_word.include?(l) == false
			trashcan << l
		  	if trashcan.length == 6
				result = "You lose"
			end
		end
	end
	result
end