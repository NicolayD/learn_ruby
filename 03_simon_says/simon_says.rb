
def echo a 
	a
end

def shout a 
	a.upcase
end

def repeat a, b=2
	if b == 2
		a + " " + a
	else
		i = 0
		while i < b-1
			sum = sum.to_s + a + " "
			i += 1
		end
	sum = sum + a
	end
end

def start_of_word x, y 
	x[0..y-1]
end

def first_word x 
	array = x.split(" ")
	array[0]
end



def titleize x

	little_words = ['and', 'the', 'a', 'an', 'or', 'but', 'for', 'in', 'as', 'of', 'up', 'nor', 'on', 'at', 'to', 'by', 'over', 'with']
	arr = Array.new
	new_array = Array.new

	if x.include?(" ")

		arr = x.split(" ")

		arr.each do |a|
			if little_words.include?(a) == false
				a.capitalize!
			end

			new_array.push a
			new_array[0].capitalize!
		end
		new_string = new_array.join(" ")

		return new_string
	end

	x.capitalize
end