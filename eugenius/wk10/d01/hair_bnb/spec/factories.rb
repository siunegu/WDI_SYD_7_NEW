FactoryGirl.define do
	factory :apartment do
		sequence(:title) { |n| "spacious #{n} Bed Apartment with Grand View" } 
		sequence(:bedrooms) { |n| n }
		price_in_cents 1_500_000
		location "Bondi, NSW"
		description "Lorem ipsum dolor sit amet..."
		available true 
	end	
end