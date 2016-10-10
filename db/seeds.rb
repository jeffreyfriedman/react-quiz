# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
question1 = Question.create(body: "What is the capital of the United States?")
q1_answer1 = Answer.create(question: question1, body: "Beijing", correct: false)
q1_answer2 = Answer.create(question: question1, body: "London", correct: false)
q1_answer3 = Answer.create(question: question1, body: "Tokyo", correct: false)
q1_answer4 = Answer.create(question: question1, body: "Washington, D.C.", correct: true)

question2 = Question.create(body: "What is 2 + 2?")
q2_answer1 = Answer.create(question: question2, body: "1", correct: false)
q2_answer2 = Answer.create(question: question2, body: "4", correct: true)
q2_answer3 = Answer.create(question: question2, body: "22", correct: false)
q2_answer4 = Answer.create(question: question2, body: "44", correct: false)

question3 = Question.create(body: "What is the best JavaScript Framework?")
q3_answer1 = Answer.create(question: question3, body: "React", correct: true)
q3_answer2 = Answer.create(question: question3, body: "Ember", correct: false)
q3_answer3 = Answer.create(question: question3, body: "Angular 2", correct: false)
q3_answer4 = Answer.create(question: question3, body: "Rails", correct: false)
