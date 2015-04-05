def word_analyzer(input)
	sorted_array=input.split.sort
	count_hash=Hash.new

	sorted_array.each do |word|
		if count_hash.has_key?("#{word}")
			count_hash["#{word}"] += 1
		else
			count_hash["#{word}"] = 1
		end
	end
	puts count_hash

	highest_count = Hash[count_hash.sort_by{ |k,v| v }.reverse].first[0]
	puts highest_count
	
end

input="Blah Blah Blah Ruby is fun but hard"
word_analyzer("#{input}")

		