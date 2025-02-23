namespace :db do
  desc "Load basic data for development"
  task dev_data: :environment do
    ActiveRecord::Base.transaction do
      if Blog.count > 0
        puts "Blogs already exist, aborting."
        next
      end
      puts "Creating blogs."
      jimmy = Blog.create!(name: "Jimmy's Jottings", tagline: "Stuff Jimmy says")
      dave = Blog.create!(name: "Dave's Diatribes")

      puts "Creating posts."
      jimmy.posts.create!(headline: "Hello, World!", body_text: "Is this on?")
      dave.posts.create!(
        headline: "Welcome!",
        body_text: "This is my first diatribe.")

      puts "All done now!"
    end
  end
end