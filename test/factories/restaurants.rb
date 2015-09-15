FactoryGirl.define do
  factory :restaurant, :class => 'Restaurants' do
    name "Roland's"
    capacity "25"
    province "Ontario"
    street "2900 East Eglinton Avenue"
    postal_code "M1J2E4"
    phone_number "(416)431-4242"
  end

end
