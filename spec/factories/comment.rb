FactoryGirl.define do

	factory :comment do
		body "woot"
		# association :post, factory: :post, title: "a new post title"
	end
end