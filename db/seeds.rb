require 'csv'

# 使用するデータ(CSVファイルの列)を指定
# テスト用
CSVROW_LEVELID = 1
CSVROW_LEVELNAME = 2
CSVROW_QUESTIONID = 3
CSVROW_QUESTIONCONTENT_JA = 4
CSVROW_QUESTIONCONTENT_EN = 5
CSVROW_CHOICECONTENT = 6
CSVROW_CHOICEBOOL = 7

# 単語帳用
CSVROW_SUBJECT = 2
CSVROW_MEANING_JA = 3
CSVROW_MEANING_EN = 4

# CSV.foreach('db/csv/question.csv') do |row|
#   level_id = row[CSVROW_LEVELID]
#   level_name = row[CSVROW_LEVELNAME]
#   question_id = row[CSVROW_QUESTIONID]
#   question_content_ja = row[CSVROW_QUESTIONCONTENT_JA]
#   question_content_en = row[CSVROW_QUESTIONCONTENT_EN]
#   choice_content = row[CSVROW_CHOICECONTENT]
#   choice_bool = row[CSVROW_CHOICEBOOL]
#
#   Level.find_or_create_by(name: level_name)
#   q = Question.find_by(
#     content_ja: question_content_ja,
#     content_en: question_content_en,
#     level_id: level_id
#   )
#   if q.nil?
#     Question.create!(
#       content_ja: question_content_ja,
#       content_en: question_content_en,
#       level_id: level_id,
#       image: open("./db/fixtures/rails.png")
#     )
#   end
#   Choice.create!(
#     content: choice_content,
#     is_answer: choice_bool,
#     question_id: question_id
#   )
# end


# CSV.foreach('db/csv/words.csv') do |row|
#   level_id = row[CSVROW_LEVELID]
#   subject = row[CSVROW_SUBJECT]
#   meaning_ja = row[CSVROW_MEANING_JA]
#   meaning_en = row[CSVROW_MEANING_EN]
#
#   Word.create!(
#     subject: subject,
#     meaning_ja: meaning_ja,
#     meaning_en: meaning_en,
#     level_id: level_id,
#     image: open("./db/fixtures/rails.png")
#   )
# end

(1..3).map do |i|
  User.create!(username: "ユーザー#{i}",
               email: "user#{i}@example.com",
               password: 'password',
               password_confirmation: 'password'
  )
end

# (1..3).map do |i|
#   Level.find_or_create_by(name: "レベル#{i}")
# end