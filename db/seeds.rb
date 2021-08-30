Review.destroy_all
List.destroy_all
User.destroy_all
Workout.destroy_all

user1 = User.create(name: "Sandra", image: "https://cdn.shopify.com/s/files/1/2040/0303/products/Cool_Serious_Buff_Red_Bull_with_Horns_Cartoon_-_Upperbody_657435830_grande.jpg?v=1518308817",
height: 72, weight: 135, age: 24, goal: "To become the strongest!")

user2 = User.create(name: "Matt", image: "https://jbhnews.com/wp-content/uploads/2019/12/get-ripped-fast-shredded-quickly-1.png",
height: 71, weight: 190, age: 27, goal: "To be an animal")

user3 = User.create(name: "Brittany", image: "https://skinnyms.com/wp-content/uploads/2017/12/7-Insane-HIIT-Leg-Workouts-With-Weights-for-Sleek-Sexy-Legs-750x500.jpg",
height: 65, weight: 150, age: 26, goal: "I want to look my best")

workout1 = Workout.create(name: "Booty Buster", description: "Bust your butt for the summer!", 
image: "https://www.mensjournal.com/wp-content/uploads/mf/_main_goblet-squat_1.jpg?quality=86&strip=all")

workout2 = Workout.create(name: "Ab Annihilation", description: "Destroy your abs!", 
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiMorsTC52ShQ4F_YCaC893nxDl2t6WfFW9jFX5WHenGfxfmBK9TliZqYJj5EaBkVXvdw&usqp=CAU",)

workout3 = Workout.create(name: "Shoulder Shredder", description: "Boulder shoulders!", 
image: "https://fitnessvolt.com/wp-content/uploads/2017/01/best-shoulder-exercise.jpg")

workout4 = Workout.create(name: "Back Builder", description: "Become a silverback gorilla!", 
image: "https://www.muscleandfitness.com/wp-content/uploads/2020/07/Mr-Olympia-and-Professional-Bodybuilder-Phil-Heath-Showing-His-Back-Muscles.jpg?quality=86&strip=all",)

workout5 = Workout.create(name: "Calf Killer", description: "You may not be able to walk tomorrow!", 
image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRATip7PLf4exTuZAVmP_TGACCgGJ1hYSZ2e5GP_-YZtGKmxt0d5UKQA3A4wFlBWwjT-k&usqp=CAU",)

workout6 = Workout.create(name: "HIIT Heaven", description: "Insane cardio", 
image: "https://lmimirror3pvr.azureedge.net/static/media/12419/3ba321af-9388-46d2-91d5-7b86a67b8c45/hiit_960x540-v2.jpg",)


List.create(user_id: user1.id, workout_id: workout1.id)
List.create(user_id: user2.id, workout_id: workout2.id)
List.create(user_id: user3.id, workout_id: workout5.id)

Review.create(user_id: user1.id, workout_id: workout1.id, comment: "Kicked my butt!", rating:7)

Review.create(user_id: user2.id, workout_id: workout1.id, comment: "Too difficult!", rating:4)

Review.create(user_id: user3.id, workout_id: workout1.id, comment: "What a pump!", rating:10)

puts "done seeding"

