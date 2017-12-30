# MOEGUESS

TODO:
1. Change from sport to Moeguess data, add logic
2. Add fromtend/js

# YML FORMAT

User
  name: string
  password_digest: string

Admin
  name: string
  password_digest: string

Question
  description: text
  qtype: string
  //sport: string
  answer: string
  admin_id: integer
  start_time: datetime
  end_time: datetime
  round: integer

Prediction
  user_id: integer
  question_id: integer
  answer: string
  pred_time: datetime
  score: float
  
Score
  round: integer
  user_id: integer
  point: float

Discussion
  content: string
  title: string
  user_id: integer
  post_time: datetime

# LOGIC
user: answer questions, update answers
admin: post questions, update points
both: see points -- total / one day / somebody's