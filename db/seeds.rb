Course.destroy_all
Student.destroy_all
Lesson.destroy_all

15.times do |index|
	food = Faker::Food.dish
	course = Course.create!({title: "How to make a #{food}.", description: "In this course you will learn to cook a #{food}."})
end

50.times do |index|
	student = Student.create!({name: Faker::FunnyName.three_word_name, course: Course.all[rand(Course.all.size-1)]})
end

45.times do |index|
	lesson = Lesson.create!({course: Course.all[rand(Course.all.size-1)], title: "Step #{rand(3)}, #{Faker::Food.fruits} !!", body: Faker::Food.description})
end
