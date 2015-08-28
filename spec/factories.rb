FactoryGirl.define do

  factory :poll do
    question "What is my question?"
    option_one "There can't be an answer without a question."
    option_two "The answer is 42."
    url_slug "5243810"
  end


end
