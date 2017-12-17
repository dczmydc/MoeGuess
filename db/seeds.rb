# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Admin.delete_all
Question.delete_all
Discussion.delete_all
Prediction.delete_all

#create user
u1 = User.create(name: 'Fred', password: 'fred123')
u2 = User.create(name: 'Sam', password: '1234')
u3 = User.create(name: 'Alfred', password: '123')
u4 = User.create(name: 'David', password: '123')
u5 = User.create(name: 'Mike', password: '123')
u6 = User.create(name: 'Tahoe', password: '123')
u7 = User.create(name: 'Juan', password: '123')
u8 = User.create(name: 'Patrick', password: '123')


#create admin
a1 = Admin.create(name: 'ad1', password: 'r49d2kj')
a2 = Admin.create(name: 'ad2', password: 'fdgqw3a')
a3 = Admin.create(name: 'ad3', password: 'w27t3kg')
a4 = Admin.create(name: 'ad4', password: '2w3e4r5')

#admin posts the question
q1 = Question.create(round: 1, description: 'Which team will win in Playoff? A.Chicago Bulls B.Boston Celtics', qtype: 'Single Choice', sport: 'Basketball', admin_id: a1.id, start_time: '2017-05-05 11:12:13 -0500', end_time: '2017-05-06 14:15:16 -0500')
q2 = Question.create(round: 1, description: 'How many points will Cubs get today?', qtype: 'Number', sport: 'Baseball', admin_id: a2.id, start_time: '2017-05-05 06:00:01 -0500', end_time: '2017-05-06 06:00:00 -0500')
q3 = Question.create(round: 1, description: 'Which team(s) will win in Europe Champion Cup during semi-final? A.Real Madrid B.Juventus C.Monaco D. ATL Madrid', qtype: 'Multiple Choice', sport: 'Soccer', admin_id: a3.id, start_time: '2017-04-30 11:12:13 -0500', end_time: '2017-05-01 08:00:01 -0500')

q11 = Question.create(round: 2, description: 'Who will win today? A. Boston Celtics, B. Washington Wizards', qtype: 'Single Choice', sport: 'Basketball', admin_id: a2.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-11 10:00:00 -0500')
q12 = Question.create(round: 2, description: 'What is Kimi Raikkonen"s ranking today?', qtype: 'Number', sport: 'Formula 1', admin_id: a4.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-11 10:00:00 -0500')
q13 = Question.create(round: 2, description: 'Choose the player from Chicago Cubs that can finish at least 1 home run today. A. Rizzo B. Kris Bryant C. None of them', qtype: 'Multiple Choice', sport: 'Baseball', admin_id: a1.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-11 10:00:00 -0500')

q21 = Question.create(round: 3, description: 'Who get the most point in today"s Golden State Warriors vs San Antonio Spurs? A. Curry, B. Thompson, C. Simmons D. Others', qtype: 'Single Choice', sport: 'Basketball', admin_id: a3.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-16 10:00:00 -0500')
q22 = Question.create(round: 3, description: 'Who will win the Super Bowl today? A.Falcons, B. Patriots, C. Others', qtype: 'Single Choice', sport: 'Football', admin_id: a1.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-16 10:00:00 -0500')
q23 = Question.create(round: 3, description: 'Which teams will finally enter Bundesliga from Bundesliga 2 in 2016-17 season? A. VfB Stuttgart B. Hannover 96, C. Braunschweig, D.Union Berlin, E. Munich 1860, F. Others', qtype: 'Multiple Choice', sport: 'Soccer', admin_id: a3.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-16 10:00:00 -0500')

q31 = Question.create(round: 4, description: 'Who will win today? A. Boston Celtics, B. Cleveland Cavaliers', qtype: 'Single Choice', sport: 'Basketball', admin_id: a1.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-23 10:00:00 -0500')
q32 = Question.create(round: 4, description: 'Will Blackhawks win today? A.yes, B.No', qtype: 'Single', sport: 'Hockey', admin_id: a2.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-23 10:00:00 -0500')
q33 = Question.create(round: 4, description: 'Choose the player from Chicago Cubs that can finish at least 1 home run today. A. Rizzo B. Kris Bryant C. None of them', qtype: 'Multiple Choice', sport: 'Baseball', admin_id: a4.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-23 10:00:00 -0500')

q41 = Question.create(round: 5, description: 'Who will win today? A. Golden State Warriors, B. Cleveland Cavaliers', qtype: 'Single Choice', sport: 'Basketball', admin_id: a3.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-30 10:00:00 -0500')
q42 = Question.create(round: 5, description: 'Which team will get the first point? A. Chicago Cubs, B. St. Louis Cardinals?, C. None of them', qtype: 'Single Choice', sport: 'Baseball', admin_id: a4.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-30 10:00:00 -0500')
q43 = Question.create(round: 5, description: 'Guess the scores from Juventus and Real Madrid in Europa Champions League Final. A.Madrid-0, B.Madrid-1, C.Madrid-2 or more, D.Juventus-0, E.Juventus-1, F.Juventus-2 or more', qtype: 'Multiple Choice', sport: 'Baseball', admin_id: a2.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-05-30 10:00:00 -0500')

q51 = Question.create(round: 6, description: 'Which team is the champion of 2017? A.Golden State Warriors, B. Cleveland Cavaliers', qtype: 'Single Choice', sport: 'Basketball', admin_id: a3.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-06-30 10:00:00 -0500')
q52 = Question.create(round: 6, description: 'How many points will LeBron James get?', qtype: 'Number', sport: 'Basketball', admin_id: a1.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-06-30 10:00:00 -0500')
q53 = Question.create(round: 6, description: 'Which team will win today? A. Arizona Diamondbacks B. Boston Red Sox C. Chicago Cubs D.Detroit Tigers', qtype: 'Multiple Choice', sport: 'Baseball', admin_id: a2.id, start_time: '2017-01-03 00:07:09 -0500', end_time: '2017-06-30 10:00:00 -0500')




#user creates discussion
d1 = Discussion.create(content: 'Yes.', title: 'Bulls will win tonight', user_id: u1.id, post_time: '2017-05-06 02:08:09 -0500')
d2 = Discussion.create(content: 'The answer may be wrong?', title: 'Cubs only get 10 runs.', user_id: u2.id, post_time: '2017-05-07 03:09:00 -0500')
d3 = Discussion.create(content: 'I win!', title: 'Wow', user_id: u3.id, post_time: '2017-05-07 01:02:03 -0500')


#User tries to predict the question
p1 = Prediction.create(user_id: u1.id, question_id: q1.id, answer: 'A', pred_time: '2017-05-05 15:15:15 -0500')
p2 = Prediction.create(user_id: u2.id, question_id: q1.id, answer: 'A', pred_time: '2017-05-05 13:17:15 -0500')
p3 = Prediction.create(user_id: u3.id, question_id: q1.id, answer: 'B', pred_time: '2017-05-05 17:18:15 -0500')

p4 = Prediction.create(user_id: u1.id, question_id: q2.id, answer: '8', pred_time: '2017-05-05 15:16:17 -0500')
p5 = Prediction.create(user_id: u2.id, question_id: q2.id, answer: '12',pred_time: '2017-05-05 12:16:17 -0500')
p6 = Prediction.create(user_id: u3.id, question_id: q2.id, answer: '3', pred_time: '2017-05-05 08:16:17 -0500')

p7 = Prediction.create(user_id: u1.id, question_id: q3.id, answer: 'CD',pred_time: '2017-04-30 23:16:17 -0500')
p8 = Prediction.create(user_id: u2.id, question_id: q3.id, answer: 'BD',pred_time: '2017-04-30 23:46:57 -0500')
p9 = Prediction.create(user_id: u3.id, question_id: q3.id, answer: 'AB',pred_time: '2017-05-01 00:16:12 -0500')

p111 = Prediction.create(user_id: u1.id, question_id: q11.id, answer: 'A',pred_time: '2017-05-08 21:17:00 -0500')
p112 = Prediction.create(user_id: u2.id, question_id: q11.id, answer: 'B',pred_time: '2017-05-03 23:52:51 -0500')
p113 = Prediction.create(user_id: u3.id, question_id: q11.id, answer: 'B',pred_time: '2017-05-02 00:26:12 -0500')
p114 = Prediction.create(user_id: u4.id, question_id: q11.id, answer: 'A',pred_time: '2017-05-06 23:35:55 -0500')
p115 = Prediction.create(user_id: u5.id, question_id: q11.id, answer: 'B',pred_time: '2017-05-05 23:42:58 -0500')
p116 = Prediction.create(user_id: u6.id, question_id: q11.id, answer: 'B',pred_time: '2017-05-03 00:51:49 -0500')
p117 = Prediction.create(user_id: u7.id, question_id: q11.id, answer: 'A',pred_time: '2017-05-02 23:27:12 -0500')
p118 = Prediction.create(user_id: u8.id, question_id: q11.id, answer: 'B',pred_time: '2017-05-01 23:19:37 -0500')

p121 = Prediction.create(user_id: u1.id, question_id: q12.id, answer: '3',pred_time: '2017-05-02 21:17:46 -0500')
p122 = Prediction.create(user_id: u2.id, question_id: q12.id, answer: '2',pred_time: '2017-05-03 13:52:31 -0500')
p123 = Prediction.create(user_id: u3.id, question_id: q12.id, answer: '1',pred_time: '2017-05-02 20:16:17 -0500')
p124 = Prediction.create(user_id: u4.id, question_id: q12.id, answer: '3',pred_time: '2017-05-03 13:55:29 -0500')
p125 = Prediction.create(user_id: u5.id, question_id: q12.id, answer: '4',pred_time: '2017-05-05 23:22:52 -0500')
p126 = Prediction.create(user_id: u6.id, question_id: q12.id, answer: '3',pred_time: '2017-05-03 10:41:41 -0500')
p127 = Prediction.create(user_id: u7.id, question_id: q12.id, answer: '2',pred_time: '2017-05-02 23:27:12 -0500')
p128 = Prediction.create(user_id: u8.id, question_id: q12.id, answer: '4',pred_time: '2017-05-01 23:19:35 -0500')

p131 = Prediction.create(user_id: u1.id, question_id: q13.id, answer: 'A',pred_time: '2017-05-02 21:17:01 -0500')
p132 = Prediction.create(user_id: u2.id, question_id: q13.id, answer: 'B',pred_time: '2017-05-03 23:52:57 -0500')
p133 = Prediction.create(user_id: u3.id, question_id: q13.id, answer: 'C',pred_time: '2017-05-02 00:25:13 -0500')
p134 = Prediction.create(user_id: u4.id, question_id: q13.id, answer: 'A',pred_time: '2017-05-02 23:35:55 -0500')
p135 = Prediction.create(user_id: u5.id, question_id: q13.id, answer: 'C',pred_time: '2017-05-02 23:42:57 -0500')
p136 = Prediction.create(user_id: u6.id, question_id: q13.id, answer: 'C',pred_time: '2017-05-01 00:51:49 -0500')
p137 = Prediction.create(user_id: u7.id, question_id: q13.id, answer: 'C',pred_time: '2017-05-06 23:22:13 -0500')
p138 = Prediction.create(user_id: u8.id, question_id: q13.id, answer: 'B',pred_time: '2017-05-01 23:11:37 -0500')

p211 = Prediction.create(user_id: u1.id, question_id: q21.id, answer: 'C',pred_time: '2017-05-12 21:17:00 -0500')
p212 = Prediction.create(user_id: u2.id, question_id: q21.id, answer: 'C',pred_time: '2017-05-13 23:52:51 -0500')
p213 = Prediction.create(user_id: u3.id, question_id: q21.id, answer: 'B',pred_time: '2017-05-12 00:26:12 -0500')
p214 = Prediction.create(user_id: u4.id, question_id: q21.id, answer: 'A',pred_time: '2017-05-13 23:35:55 -0500')
p215 = Prediction.create(user_id: u5.id, question_id: q21.id, answer: 'B',pred_time: '2017-05-15 23:42:58 -0500')
p216 = Prediction.create(user_id: u6.id, question_id: q21.id, answer: 'C',pred_time: '2017-05-13 00:51:49 -0500')
p217 = Prediction.create(user_id: u7.id, question_id: q21.id, answer: 'A',pred_time: '2017-05-12 23:27:12 -0500')
p218 = Prediction.create(user_id: u8.id, question_id: q21.id, answer: 'B',pred_time: '2017-05-11 23:19:37 -0500')

p221 = Prediction.create(user_id: u1.id, question_id: q22.id, answer: 'A',pred_time: '2017-05-13 21:17:00 -0500')
p222 = Prediction.create(user_id: u2.id, question_id: q22.id, answer: 'A',pred_time: '2017-05-14 13:52:51 -0500')
p223 = Prediction.create(user_id: u3.id, question_id: q22.id, answer: 'A',pred_time: '2017-05-13 20:25:10 -0500')
p224 = Prediction.create(user_id: u4.id, question_id: q22.id, answer: 'A',pred_time: '2017-05-12 23:35:50 -0500')
p225 = Prediction.create(user_id: u5.id, question_id: q22.id, answer: 'B',pred_time: '2017-05-11 23:22:50 -0500')
p226 = Prediction.create(user_id: u6.id, question_id: q22.id, answer: 'A',pred_time: '2017-05-12 00:51:49 -0500')
p227 = Prediction.create(user_id: u7.id, question_id: q22.id, answer: 'A',pred_time: '2017-05-13 23:37:50 -0500')
p228 = Prediction.create(user_id: u8.id, question_id: q22.id, answer: 'B',pred_time: '2017-05-14 23:19:37 -0500')

p231 = Prediction.create(user_id: u1.id, question_id: q23.id, answer: 'AB',pred_time: '2017-05-13 21:17:00 -0500')
p232 = Prediction.create(user_id: u2.id, question_id: q23.id, answer: 'ABD',pred_time: '2017-05-13 23:52:51 -0500')
p233 = Prediction.create(user_id: u3.id, question_id: q23.id, answer: 'BC',pred_time: '2017-05-14 00:26:12 -0500')
p234 = Prediction.create(user_id: u4.id, question_id: q23.id, answer: 'ACE',pred_time: '2017-05-12 23:35:55 -0500')
p235 = Prediction.create(user_id: u5.id, question_id: q23.id, answer: 'AB',pred_time: '2017-05-13 23:42:58 -0500')
p236 = Prediction.create(user_id: u6.id, question_id: q23.id, answer: 'B',pred_time: '2017-05-09 00:51:49 -0500')
p237 = Prediction.create(user_id: u7.id, question_id: q23.id, answer: 'ABC',pred_time: '2017-05-12 23:27:12 -0500')
p238 = Prediction.create(user_id: u8.id, question_id: q23.id, answer: 'AF',pred_time: '2017-05-11 23:19:37 -0500')

p311 = Prediction.create(user_id: u1.id, question_id: q31.id, answer: 'A',pred_time: '2017-05-20 11:17:00 -0500')
p312 = Prediction.create(user_id: u2.id, question_id: q31.id, answer: 'A',pred_time: '2017-05-20 13:52:51 -0500')
p313 = Prediction.create(user_id: u3.id, question_id: q31.id, answer: 'B',pred_time: '2017-05-20 10:26:12 -0500')
p314 = Prediction.create(user_id: u4.id, question_id: q31.id, answer: 'B',pred_time: '2017-05-20 13:35:55 -0500')
p315 = Prediction.create(user_id: u5.id, question_id: q31.id, answer: 'A',pred_time: '2017-05-20 13:42:58 -0500')
p316 = Prediction.create(user_id: u6.id, question_id: q31.id, answer: 'B',pred_time: '2017-05-20 10:51:49 -0500')
p317 = Prediction.create(user_id: u7.id, question_id: q31.id, answer: 'B',pred_time: '2017-05-20 13:27:12 -0500')
p318 = Prediction.create(user_id: u8.id, question_id: q31.id, answer: 'A',pred_time: '2017-05-20 13:19:37 -0500')

p321 = Prediction.create(user_id: u1.id, question_id: q32.id, answer: 'B',pred_time: '2017-05-20 11:12:05 -0500')
p322 = Prediction.create(user_id: u2.id, question_id: q32.id, answer: 'A',pred_time: '2017-05-19 14:51:51 -0500')
p323 = Prediction.create(user_id: u3.id, question_id: q32.id, answer: 'B',pred_time: '2017-05-22 15:51:15 -0500')
p324 = Prediction.create(user_id: u4.id, question_id: q32.id, answer: 'A',pred_time: '2017-05-21 16:22:53 -0500')
p325 = Prediction.create(user_id: u5.id, question_id: q32.id, answer: 'A',pred_time: '2017-05-22 17:33:53 -0500')
p326 = Prediction.create(user_id: u6.id, question_id: q32.id, answer: 'A',pred_time: '2017-05-21 18:53:42 -0500')
p327 = Prediction.create(user_id: u7.id, question_id: q32.id, answer: 'B',pred_time: '2017-05-22 14:15:11 -0500')
p328 = Prediction.create(user_id: u8.id, question_id: q32.id, answer: 'B',pred_time: '2017-05-21 03:11:37 -0500')

p331 = Prediction.create(user_id: u1.id, question_id: q33.id, answer: 'A',pred_time: '2017-05-20 21:11:00 -0500')
p332 = Prediction.create(user_id: u2.id, question_id: q33.id, answer: 'AB',pred_time: '2017-05-21 23:12:01 -0500')
p333 = Prediction.create(user_id: u3.id, question_id: q33.id, answer: 'AB',pred_time: '2017-05-20 00:16:02 -0500')
p334 = Prediction.create(user_id: u4.id, question_id: q33.id, answer: 'A',pred_time: '2017-05-21 23:31:50 -0500')
p335 = Prediction.create(user_id: u5.id, question_id: q33.id, answer: 'C',pred_time: '2017-05-21 23:41:50 -0500')
p336 = Prediction.create(user_id: u6.id, question_id: q33.id, answer: 'AB',pred_time: '2017-05-21 00:11:09 -0500')
p337 = Prediction.create(user_id: u7.id, question_id: q33.id, answer: 'A',pred_time: '2017-05-22 23:21:10 -0500')
p338 = Prediction.create(user_id: u8.id, question_id: q33.id, answer: 'B',pred_time: '2017-05-21 23:11:30 -0500')

p411 = Prediction.create(user_id: u1.id, question_id: q41.id, answer: 'A',pred_time: '2017-05-25 11:13:02 -0500')
p412 = Prediction.create(user_id: u2.id, question_id: q41.id, answer: 'A',pred_time: '2017-05-25 12:52:55 -0500')
p413 = Prediction.create(user_id: u3.id, question_id: q41.id, answer: 'B',pred_time: '2017-05-25 03:21:16 -0500')
p414 = Prediction.create(user_id: u4.id, question_id: q41.id, answer: 'A',pred_time: '2017-05-25 04:33:52 -0500')
p415 = Prediction.create(user_id: u5.id, question_id: q41.id, answer: 'A',pred_time: '2017-05-25 15:43:54 -0500')
p416 = Prediction.create(user_id: u6.id, question_id: q41.id, answer: 'A',pred_time: '2017-05-25 06:11:46 -0500')
p417 = Prediction.create(user_id: u7.id, question_id: q41.id, answer: 'A',pred_time: '2017-05-25 21:27:42 -0500')
p418 = Prediction.create(user_id: u8.id, question_id: q41.id, answer: 'B',pred_time: '2017-05-25 23:19:27 -0500')

p421 = Prediction.create(user_id: u1.id, question_id: q42.id, answer: 'B',pred_time: '2017-05-25 21:17:05 -0500')
p422 = Prediction.create(user_id: u2.id, question_id: q42.id, answer: 'A',pred_time: '2017-05-24 13:22:51 -0500')
p423 = Prediction.create(user_id: u3.id, question_id: q42.id, answer: 'B',pred_time: '2017-05-22 00:56:18 -0500')
p424 = Prediction.create(user_id: u4.id, question_id: q42.id, answer: 'A',pred_time: '2017-05-26 13:34:53 -0500')
p425 = Prediction.create(user_id: u5.id, question_id: q42.id, answer: 'A',pred_time: '2017-05-22 13:42:58 -0500')
p426 = Prediction.create(user_id: u6.id, question_id: q42.id, answer: 'B',pred_time: '2017-05-25 10:54:42 -0500')
p427 = Prediction.create(user_id: u7.id, question_id: q42.id, answer: 'B',pred_time: '2017-05-24 13:23:12 -0500')
p428 = Prediction.create(user_id: u8.id, question_id: q42.id, answer: 'A',pred_time: '2017-05-23 23:12:31 -0500')

p431 = Prediction.create(user_id: u1.id, question_id: q43.id, answer: 'AD',pred_time: '2017-05-24 11:17:59 -0500')
p432 = Prediction.create(user_id: u2.id, question_id: q43.id, answer: 'BD',pred_time: '2017-05-28 21:54:25 -0500')
p433 = Prediction.create(user_id: u3.id, question_id: q43.id, answer: 'BE',pred_time: '2017-05-25 17:26:35 -0500')
p434 = Prediction.create(user_id: u4.id, question_id: q43.id, answer: 'AF',pred_time: '2017-05-28 19:35:36 -0500')
p435 = Prediction.create(user_id: u5.id, question_id: q43.id, answer: 'BF',pred_time: '2017-05-26 12:42:28 -0500')
p436 = Prediction.create(user_id: u6.id, question_id: q43.id, answer: 'CE',pred_time: '2017-05-28 05:51:21 -0500')
p437 = Prediction.create(user_id: u7.id, question_id: q43.id, answer: 'CB',pred_time: '2017-05-27 12:27:42 -0500')
p438 = Prediction.create(user_id: u8.id, question_id: q43.id, answer: 'C',pred_time: '2017-05-23 12:12:34 -0500')



#admin updates the answer
q1.answer = 'B'
q2.answer = '12'
q3.answer = 'AB'
q11.answer = 'A'
q12.answer = 3
q13.answer = 'B'
q21.answer = 'A'
q22.answer = 'B'
q23.answer = 'AB'
q31.answer = 'B'
q32.answer = 'A'
q33.answer = 'A'
q41.answer = 'A'
q42.answer = 'B'
q43.answer = 'CE'

q1.save
q2.save
q3.save
q11.save
q12.save
q13.save
q21.save
q22.save
q23.save
q31.save
q32.save
q33.save
q41.save
q42.save
q43.save


#Admin updates the prediction score
p1.score = 0.0
p2.score = 0.0
p3.score = 1.0
p4.score = 0.6
p5.score = 1.0
p6.score = 0.1
p7.score = 0.0
p8.score = 0.5
p9.score = 1.0

p111.score = Calculation.calcScore(q11.qtype, p111.answer, q11.answer)
p112.score = Calculation.calcScore(q11.qtype, p112.answer, q11.answer)
p113.score = Calculation.calcScore(q11.qtype, p113.answer, q11.answer)
p114.score = Calculation.calcScore(q11.qtype, p114.answer, q11.answer)
p115.score = Calculation.calcScore(q11.qtype, p115.answer, q11.answer)
p116.score = Calculation.calcScore(q11.qtype, p116.answer, q11.answer)
p117.score = Calculation.calcScore(q11.qtype, p117.answer, q11.answer)
p118.score = Calculation.calcScore(q11.qtype, p118.answer, q11.answer)

p121.score = Calculation.calcScore(q12.qtype, p121.answer, q12.answer)
p122.score = Calculation.calcScore(q12.qtype, p122.answer, q12.answer)
p123.score = Calculation.calcScore(q12.qtype, p123.answer, q12.answer)
p124.score = Calculation.calcScore(q12.qtype, p124.answer, q12.answer)
p125.score = Calculation.calcScore(q12.qtype, p125.answer, q12.answer)
p126.score = Calculation.calcScore(q12.qtype, p126.answer, q12.answer)
p127.score = Calculation.calcScore(q12.qtype, p127.answer, q12.answer)
p128.score = Calculation.calcScore(q12.qtype, p128.answer, q12.answer)

p131.score = Calculation.calcScore(q13.qtype, p131.answer, q13.answer)
p132.score = Calculation.calcScore(q13.qtype, p132.answer, q13.answer)
p133.score = Calculation.calcScore(q13.qtype, p133.answer, q13.answer)
p134.score = Calculation.calcScore(q13.qtype, p134.answer, q13.answer)
p135.score = Calculation.calcScore(q13.qtype, p135.answer, q13.answer)
p136.score = Calculation.calcScore(q13.qtype, p136.answer, q13.answer)
p137.score = Calculation.calcScore(q13.qtype, p137.answer, q13.answer)
p138.score = Calculation.calcScore(q13.qtype, p138.answer, q13.answer)


p211.score = Calculation.calcScore(q21.qtype, p211.answer, q21.answer)
p212.score = Calculation.calcScore(q21.qtype, p212.answer, q21.answer)
p213.score = Calculation.calcScore(q21.qtype, p213.answer, q21.answer)
p214.score = Calculation.calcScore(q21.qtype, p214.answer, q21.answer)
p215.score = Calculation.calcScore(q21.qtype, p215.answer, q21.answer)
p216.score = Calculation.calcScore(q21.qtype, p216.answer, q21.answer)
p217.score = Calculation.calcScore(q21.qtype, p217.answer, q21.answer)
p218.score = Calculation.calcScore(q21.qtype, p218.answer, q21.answer)

p221.score = Calculation.calcScore(q22.qtype, p221.answer, q22.answer)
p222.score = Calculation.calcScore(q22.qtype, p222.answer, q22.answer)
p223.score = Calculation.calcScore(q22.qtype, p223.answer, q22.answer)
p224.score = Calculation.calcScore(q22.qtype, p224.answer, q22.answer)
p225.score = Calculation.calcScore(q22.qtype, p225.answer, q22.answer)
p226.score = Calculation.calcScore(q22.qtype, p226.answer, q22.answer)
p227.score = Calculation.calcScore(q22.qtype, p227.answer, q22.answer)
p228.score = Calculation.calcScore(q22.qtype, p228.answer, q22.answer)

p231.score = Calculation.calcScore(q23.qtype, p231.answer, q23.answer)
p232.score = Calculation.calcScore(q23.qtype, p232.answer, q23.answer)
p233.score = Calculation.calcScore(q23.qtype, p233.answer, q23.answer)
p234.score = Calculation.calcScore(q23.qtype, p234.answer, q23.answer)
p235.score = Calculation.calcScore(q23.qtype, p235.answer, q23.answer)
p236.score = Calculation.calcScore(q23.qtype, p236.answer, q23.answer)
p237.score = Calculation.calcScore(q23.qtype, p237.answer, q23.answer)
p238.score = Calculation.calcScore(q23.qtype, p238.answer, q23.answer)


p311.score = Calculation.calcScore(q31.qtype, p311.answer, q31.answer)
p312.score = Calculation.calcScore(q31.qtype, p312.answer, q31.answer)
p313.score = Calculation.calcScore(q31.qtype, p313.answer, q31.answer)
p314.score = Calculation.calcScore(q31.qtype, p314.answer, q31.answer)
p315.score = Calculation.calcScore(q31.qtype, p315.answer, q31.answer)
p316.score = Calculation.calcScore(q31.qtype, p316.answer, q31.answer)
p317.score = Calculation.calcScore(q31.qtype, p317.answer, q31.answer)
p318.score = Calculation.calcScore(q31.qtype, p318.answer, q31.answer)

p321.score = Calculation.calcScore(q32.qtype, p321.answer, q32.answer)
p322.score = Calculation.calcScore(q32.qtype, p322.answer, q32.answer)
p323.score = Calculation.calcScore(q32.qtype, p323.answer, q32.answer)
p324.score = Calculation.calcScore(q32.qtype, p324.answer, q32.answer)
p325.score = Calculation.calcScore(q32.qtype, p325.answer, q32.answer)
p326.score = Calculation.calcScore(q32.qtype, p326.answer, q32.answer)
p327.score = Calculation.calcScore(q32.qtype, p327.answer, q32.answer)
p328.score = Calculation.calcScore(q32.qtype, p328.answer, q32.answer)

p331.score = Calculation.calcScore(q33.qtype, p331.answer, q33.answer)
p332.score = Calculation.calcScore(q33.qtype, p332.answer, q33.answer)
p333.score = Calculation.calcScore(q33.qtype, p333.answer, q33.answer)
p334.score = Calculation.calcScore(q33.qtype, p334.answer, q33.answer)
p335.score = Calculation.calcScore(q33.qtype, p335.answer, q33.answer)
p336.score = Calculation.calcScore(q33.qtype, p336.answer, q33.answer)
p337.score = Calculation.calcScore(q33.qtype, p337.answer, q33.answer)
p338.score = Calculation.calcScore(q33.qtype, p338.answer, q33.answer)


p411.score = Calculation.calcScore(q41.qtype, p411.answer, q41.answer)
p412.score = Calculation.calcScore(q41.qtype, p412.answer, q41.answer)
p413.score = Calculation.calcScore(q41.qtype, p413.answer, q41.answer)
p414.score = Calculation.calcScore(q41.qtype, p414.answer, q41.answer)
p415.score = Calculation.calcScore(q41.qtype, p415.answer, q41.answer)
p416.score = Calculation.calcScore(q41.qtype, p416.answer, q41.answer)
p417.score = Calculation.calcScore(q41.qtype, p417.answer, q41.answer)
p418.score = Calculation.calcScore(q41.qtype, p418.answer, q41.answer)

p421.score = Calculation.calcScore(q42.qtype, p421.answer, q42.answer)
p422.score = Calculation.calcScore(q42.qtype, p422.answer, q42.answer)
p423.score = Calculation.calcScore(q42.qtype, p423.answer, q42.answer)
p424.score = Calculation.calcScore(q42.qtype, p424.answer, q42.answer)
p425.score = Calculation.calcScore(q42.qtype, p425.answer, q42.answer)
p426.score = Calculation.calcScore(q42.qtype, p426.answer, q42.answer)
p427.score = Calculation.calcScore(q42.qtype, p427.answer, q42.answer)
p428.score = Calculation.calcScore(q42.qtype, p428.answer, q42.answer)

p431.score = Calculation.calcScore(q43.qtype, p431.answer, q43.answer)
p432.score = Calculation.calcScore(q43.qtype, p432.answer, q43.answer)
p433.score = Calculation.calcScore(q43.qtype, p433.answer, q43.answer)
p434.score = Calculation.calcScore(q43.qtype, p434.answer, q43.answer)
p435.score = Calculation.calcScore(q43.qtype, p435.answer, q43.answer)
p436.score = Calculation.calcScore(q43.qtype, p436.answer, q43.answer)
p437.score = Calculation.calcScore(q43.qtype, p437.answer, q43.answer)
p438.score = Calculation.calcScore(q43.qtype, p438.answer, q43.answer)





p1.save
p2.save
p3.save
p4.save
p5.save
p6.save
p7.save
p8.save
p9.save
p111.save
p112.save
p113.save
p114.save
p115.save
p116.save
p117.save
p118.save
p121.save
p122.save
p123.save
p124.save
p125.save
p126.save
p127.save
p128.save
p131.save
p132.save
p133.save
p134.save
p135.save
p136.save
p137.save
p138.save

p211.save
p212.save
p213.save
p214.save
p215.save
p216.save
p217.save
p218.save
p221.save
p222.save
p223.save
p224.save
p225.save
p226.save
p227.save
p228.save
p231.save
p232.save
p233.save
p234.save
p235.save
p236.save
p237.save
p238.save

p311.save
p312.save
p313.save
p314.save
p315.save
p316.save
p317.save
p318.save
p321.save
p322.save
p323.save
p324.save
p325.save
p326.save
p327.save
p328.save
p331.save
p332.save
p333.save
p334.save
p335.save
p336.save
p337.save
p338.save

p411.save
p412.save
p413.save
p414.save
p415.save
p416.save
p417.save
p418.save
p421.save
p422.save
p423.save
p424.save
p425.save
p426.save
p427.save
p428.save
p431.save
p432.save
p433.save
p434.save
p435.save
p436.save
p437.save
p438.save



puts "There are now:"
puts "  #{User.count} users"
puts "  #{Admin.count} admins"
puts "  #{Question.count} questions"
puts "  #{Prediction.count} predictions"
puts "  #{Discussion.count} discussions"



