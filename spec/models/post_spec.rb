require 'spec_helper'

describe Post do

	it {should belong_to(:category)}
	it {should validate_presence_of(:title)}
	it {should have_many(:comments)}

	before(:each) do
		@post = FactoryGirl.create(:post)
	end

	it "should default to zero upvotes" do
		@post.up_votes.should eq(0)
	end

	it "should be upvotable" do
    @post.up_votes += 1
    @post.up_votes.should eq(1)
	end

	it "should be able to have comments" do
		comment = @post.comments.create(author: 'cori', body: 'this is a comment')
		@post.comments.length.should eq(1)
	end

	it "should destroy associated comments upon post-destruction" do
		comment = @post.comments.create(author: 'cori', body: 'this is a comment')
		@post.destroy
		Comment.all.length.should eq(0)
	end

end