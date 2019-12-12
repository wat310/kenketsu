FactoryBot.define do

  factory :user do
    nickname              {"test"}
    email                 {"kkk@gmail.com"}
    password              {"1234567"}
    password_confirmation {"1234567"}
    sex                   {"男性"}
  end

end