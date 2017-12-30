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
		#q_t: [{type: "Single Choice" ,answer:[A]} ,
		#      {type: "Number Range"  ,answer:[25,[0.8,0.5,0.2]]}
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
		return 1.0
	end



end
