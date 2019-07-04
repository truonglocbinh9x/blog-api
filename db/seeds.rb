imgs = [
  'https://firebasestorage.googleapis.com/v0/b/foodblog-5a355.appspot.com/o/bbb1.jpg?alt=media&token=520d2bc4-563c-4aa2-a1b0-7baa79f5100a',
  'https://firebasestorage.googleapis.com/v0/b/foodblog-5a355.appspot.com/o/bbb2.jpg?alt=media&token=75aa7071-393b-4dbd-a123-53ba2400c56d',
  'https://firebasestorage.googleapis.com/v0/b/foodblog-5a355.appspot.com/o/bbb3.jpg?alt=media&token=13db3af3-ba05-429a-8b41-188f5844f34a'
]

100.times do |i|
  Post.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    heading_img: imgs.sample,
    short_description: Faker::Lorem.paragraph
  )
end
(1..100).each do |i|
  3.times do |n|
    Comment.create(
      post_id: i,
      email: Faker::Internet.email,
      content: Faker::Lorem.sentence,
      name: Faker::Name.name,
      subject: Faker::Marketing.buzzwords
    )
  end
end
