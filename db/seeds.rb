require 'csv'

# 使用するデータ(CSVファイルの列)を指定
CSVROW_LEVELID = 1
CSVROW_LEVELNAME = 2
CSVROW_QUESTIONID = 3
CSVROW_QUESTIONCONTENT = 4
CSVROW_CHOICECONTENT = 5
CSVROW_CHOICEBOOL = 6

CSV.foreach('db/csv/question.csv') do |row|
  level_id = row[CSVROW_LEVELID]
  level_name = row[CSVROW_LEVELNAME]
  question_id = row[CSVROW_QUESTIONID]
  question_content = row[CSVROW_QUESTIONCONTENT]
  choice_content = row[CSVROW_CHOICECONTENT]
  choice_bool = row[CSVROW_CHOICEBOOL]

  Level.find_or_create_by(name: level_name)
  Question.find_or_create_by(content: question_content, level_id: level_id)
  Choice.create!(content: choice_content, is_answer: choice_bool, question_id: question_id)
end

User.create!(username: 'ユーザー1',
             email: 'user1@example.com',
             password: 'password',
             password_confirmation: 'password'
)