class Calculation
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
end