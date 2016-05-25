class Calculator

  def add(number_1, number_2)
		number_1 + number_2
  end

	def subtract(number_1, number_2)
	  number_1 - number_2
	end

	def multiply(number_1,number_2)
		number_1 * number_2
	end

	def divide(number_1, number_2)
		number_1 / number_2
	end

end


class Output
	def print_answer(answer)
	  "The Answer is: #{ answer }"
	end
end