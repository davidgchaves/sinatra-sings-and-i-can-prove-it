When /^Sinatra is told to sing the (\w+) tune$/ do |tune_title|
  visit "/?tune_title=#{tune_title}"
end

Then /^he sings the (\w+) tune loud and clear$/ do |tune_title|
  expect(page).to have_content "#{tune_title} tune"
end
