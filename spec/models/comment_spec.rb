require 'spec_helper'

describe Comment do
	it { should belong_to(:post) }
	it { should validate_presence_of(:body) }

	before(:each) do
		FactoryGirl.create(:comment)
	end

	it "should be upvotable" do
		@comment.up_votes += 1
		@comment.up_votes.should eq(1)
	end

	it "should be downvotable" do
		@comment.up_votes -= 1
		@comment.up_votes.should eq(-1)
	end	
end