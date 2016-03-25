require 'fabrication'
require 'faker'

puts "Seeding #{Rails.env}"

ProgressBar.new("Creating users with items", 30) do |progress_bar|
  30.times do
    user = Fabricate(:user)
    50.times do
      Fabricate(:item, user: user)
    end
    progress_bar.inc
  end
end
