FactoryGirl.define do
    factory :user do
        email "a@a.com"
        ip_address "209.95.50.15"
        admin false
    end

    factory :admin, class: User do
      email "b@b.com"
      ip_address "198.8.80.5"
      admin true
    end
end
