
def add (a,b)
	a + b
end

def subtract a,b
	a - b
end

def sum a
	all = 0
	a.each do |x|
		all += x
	end
	all
end

def multiply a, *b

	if b.length == 1
		return a * b[0]
	end
	
	all = a
	b.each do |x|
		all = all * x
	end
	return all

end	

def power a,b
	a ** b
end

def factorial a

	if a == 0 || a == 1
		return 1
	else

	fact = a * factorial(a-1)
	a -= 1

	fact

	end
	
end