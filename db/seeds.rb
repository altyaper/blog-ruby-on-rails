
user = User.create(email: "jorgechavzns@gmail.com", password: "jorge123")
cat1 = Category.create(description: "Sports", status: 1, user_id: user.id)
Category.create(description: "Technology", status: 1, user_id: user.id)
Category.create(description: "Art", status: 1, user_id: user.id)


Article.create(status: 1, category_id: cat1.id, description: "Cristiano Ronaldo Scores 800 goals!!", user_id: user.id)