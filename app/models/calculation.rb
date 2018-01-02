class Calculation

	#This method is obsolete in moeguess
	def self.calcScore(qtype, my_ans, corr_ans)
		if qtype == "Single Choice"
			if my_ans == corr_ans
				return 1.0
			else
				return 0.0
			end
		elsif qtype == "Multiple Choice"
			corr_len = corr_ans.length
			my_len = my_ans.length
			my_corr = 0.0
			for i in 0..corr_len-1
				#puts i
				if my_ans.include? corr_ans[i]
					my_corr = my_corr + 2.0
				end
			end
			my_corr = my_corr - my_len
			if(my_corr <= 0.0)
				my_corr = 0.0
			end
			my_corr = my_corr / corr_len
			return my_corr
		elsif qtype == "Number"
			diff = (my_ans.to_f - corr_ans.to_f)
			diff = diff.abs
			diff = diff / 10
			point = 1.0 - diff
			if point <= 0.0
				point = 0.0
			end
			return point
		end
		return 0.0
	end

	#In moeguess, use this method to calculte scores.
	# Parameters:
	# questions_type: List of [name, [answer & parameters]]
	# answers: List of [user_id, List of single answers]
	# return: List of [user_id, [standard,[every question pts]]]
	def self.calculate_scores(questions_type, answers)
		#Examples:
		#q_t: [{type: "Single Choice" ,answer:A} ,
		#      {type: "Number Range"  ,answer:[25,0.8,0.5,0.2]}
		#     ]
		#ans: [{user_id:15, user_answer:["A","B"]} ,
		#      {user_id:23, user_answer:["C","D"]}
		#     ]
		#ret: [{uid:15, sp:53.25, pts:[0.7,1.4]} ,
		#      {uid:23, sp:47.77, pts:[0.5,0.8]}
		#     ]

		#Check nil
		if questions_type.nil?
			raise "Question Type List is empty!"
		end
		players_points = []
		if answers.nil?
			return players_points
		end

		#For every player's answer
		answers.each do |answer|
			user_id = answer[:user_id]
			user_answer = answer[:user_answer]

			if user_answer.length != questions_type.length
				raise "Not equal answer length!"
			end

			raw_points = [0] * questions_type.length

			#Calculate raw points for each answer
			for i in 0..questions_type.length-1
				raw_points[i] = Calculation.single_answer(questions_type[i],user_answer[i])
			end
			players_points.append({user_id: user_id, standardScore: nil, raw_points: raw_points})
		end
		return players_points
	end

	def self.single_answer(question, answer)
		puts question
		puts answer
		question_type = question[:type]
		correct_answer = question[:answer]

		#1. single answer
		if question_type == "Single Choice"
			if answer.to_s == correct_answer.to_s
			 return 1.0
			else
			 return 0.0
			end
		end

		#2. number
		if question_type == "Number"
			my_error = (correct_answer[0] - answer.to_f).abs
			min_error = correct_answer[1]
			max_error = correct_answer[2]
			my_score = 1 - (my_error - min_error) / (max_error - min_error)
			if my_score > 1.0
				my_score = 1.0
			end
			if my_score < 0
				my_score = 0.0
			end
			return my_score
		end

 		#3. Multiple Choice
		if question_type == "Multiple Choice"
			correct_number = 0.0
			wrong_number = 0.0
			answered_list = []
			answer.split('').each do |ch|
				#If same choice appears again, skip it
				if answered_list.include? ch
					next#continue
				end
				answered_list.append(ch)

				#correct/wrong ++
				if correct_answer.include? ch
					correct_number += 1
				else
					wrong_number += 1
				end
			end

			#final points
			valid_points = (correct_number - wrong_number) / correct_answer.length
			if valid_points > 1.0
				puts "Warning: valid points greater than 1 in multiple choice"
				valid_points = 1.0
			end
			if valid_points < 0
				return 0.0
			end
			return valid_points
		end

 		#4. Compound Choice
		if question_type == "Compound Choice"
			if answer.include? correct_answer
				return (1.0 / answer.length)
			else
				return 0.0
			end
		end

 		#5. JiaYiBing
		if question_type == "JiaYiBing"
			if answer == correct_answer[0]
				return 3.0
			elsif answer == correct_answer[1]
				return 2.0
			elsif answer == correct_answer[2]
				return 1.0
			end
			return 0.0
		end

 		#6. Shopping

 		#7. JiaYiBing Shopping

 		#8. Single Choice Multiple Answer
		if question_type == "Single Choice Multiple Answer"
			if correct_answer.include? answer
				return 1.0
			else
				return 0.0
			end
		end

 		#a. Custom Sorting

 		#c. Range Number
		if question_type == "Number Range"
			my_answer = answer.to_i
			#distance of the player's answer to the correct answer
			delta = (my_answer - correct_answer[0]).abs
			# if totally correct
			if delta == 0
				return 1.0
			end
			# if the distance is in the range
			if delta < correct_answer.length
				return correct_answer[delta]
			else
				return 0.0
			end
		end

		return 0.0
	end

	def self.test()

		#init
		correct_test = 0
		wrong_test = 0

		#1. single answer
		q = {type:"Single Choice", answer: "C"}
		a1 = "C"
		a2 = "A"
		if Calculation.single_answer(q,a1) == 1.0
			correct_test += 1
		else
			wrong_test += 1
			puts "Should be 1.0, but is ", Calculation.single_answer(q,a2)
		end
		if Calculation.single_answer(q,a2) == 0.0
			correct_test += 1
		else
			wrong_test += 1
			puts "Should be 0.0, but is ", Calculation.single_answer(q,a2)
		end
		puts "Totally " + correct_test.to_s + "/" + (correct_test+wrong_test).to_s + " test passed."



	end




end
