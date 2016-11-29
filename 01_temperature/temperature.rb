
def ftoc f
	if f == 32
		return 0
	end
	c = (f - 32) * 5/9
	return c

end

def ctof c
	if c == 0
		return 32
	end

	f = (c.to_f * 9/5) + 32
	return f
end
