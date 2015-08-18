FactoryGirl.define do 

  factory :guest_poll do
    poll_question "What is my question?"
    option_one "There can't be an answer without a question."
    option_two "The answer is 42."
  end


end