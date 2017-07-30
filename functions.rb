def calc(math, num1, num2)

	if math == "add"
		sum = num1.to_i + num2.to_i
	elsif math == 'subtract'
		sum = num1.to_i - num2.to_i
	elsif math == 'multiply'
		sum = num1.to_i * num2.to_i
	elsif math == 'divide'
		sum = num1.to_i / num2.to_i
	#numbers are changed to integer in order to be used in a math function.
	end
	sum.to_s
	#The total is then changed back to a string so that the info can then be passed.
end
