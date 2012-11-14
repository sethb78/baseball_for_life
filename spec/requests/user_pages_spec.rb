require 'spec_helper'

describe "User pages" do

	subject { page }
        let(:user) { FactoryGirl.create(:user) }
       

	describe "index" do
    		before do
      			sign_in user
      			visit users_path
    		end

    		it { should have_selector('title', text: 'All users') }
    		it { should have_selector('h1',    text: 'All users') }

    		describe "pagination" do
      			before(:all) { 30.times { FactoryGirl.create(:user) } }
      			after(:all)  { User.delete_all }
      			it { should have_selector('div.pagination') }

      			it "should list each user" do
        			User.paginate(page: 1).each do |user|
          				page.should have_selector('li', text: user.name)
        			end
      			end
    		end
  	end


  	describe "profile page" do
                let!(:m1) { FactoryGirl.create(:micropost, user: user, content: "Foo") }
                let!(:m2) { FactoryGirl.create(:micropost, user: user, content: "Bar") }

	    	before { visit user_path(user) }
	    	it { should have_selector('h1',    text: user.name) }
	    	it { should have_selector('title', text: user.name) }

                describe "microposts should appear on profile" do
                        it { should have_content(m1.content) }
                        it { should have_content(m2.content) }
                        it { should have_content(user.microposts.count) }
                end
	end


	describe "signup page" do
	    	before { visit signup_path }
	    	it { should have_selector('h1',    text: 'Sign up') }
	    	it { should have_selector('title', text: 'Sign up') }

                describe "signing up" do
                        let (:submit) { "Create my account" }

                        describe "with invalid information (no info)" do
                                it "should not create a user" do
                                        expect { click_button submit }.not_to change(User, :count)
                                end
                        end

                        describe "with valid information" do
                                before { signup }

                                describe "after saving the user" do
                                        before { click_button submit }
                                        let(:user) { User.find_by_email("user@example.com") }

                                        it { should have_selector('title', text: user.name) }
                                        it { should have_selector('div.alert.alert-success', text: 'Welcome') }
                                        it { should have_link('Sign out') }
                        	end

                                it "should create a user" do
                                        expect { click_button submit }.to change(User, :count).by(1)
                                end
                        end

                        describe "after signing in" do
                                before { sign_in user }

                                describe "edititing your profile" do
                                        before { visit edit_user_path(user) }
                                               
                                        describe "update your profile page" do
                                               it { should have_selector('h1',    text: "Update your profile") }
                                               it { should have_selector('title', text: "Edit user") }
                                               it { should have_link('change', href: 'http://gravatar.com/emails') }
                                        end

                                        describe "updating profile with invalid/missing information" do
                                                before { click_button "Save changes" }
                                                it { should have_content('error') }
                                        end
                                end

                                describe "Visiting the user signup page after being signed in" do
                                        before { get new_user_path }      
                                        specify { response.should redirect_to(root_path) }        
                                end

                                describe "using the 'create' action after being signed in" do
                                        before {post users_path}
                                        specify { response.should redirect_to(root_path) }
                                end
                        end
                end
        end


        describe "delete users" do

                it { should_not have_link('delete') }

                describe "as an admin user" do
                        before(:all) { 30.times { FactoryGirl.create(:user) } }
                        after(:all)  { User.delete_all } 
                        let(:admin) { FactoryGirl.create(:admin) }
                        before do
                                sign_in admin
                                visit users_path
                        end

                        it { should have_selector('title', text: 'All users') }
                       
                        it { should have_link('delete', href: user_path(User.first)) }
                        it "should be able to delete another user" do
                                expect { click_link('delete') }.to change(User, :count).by(-1)                        
                        end
                        it { should_not have_link('delete', href: user_path(admin)) }
                
                        it "Should not allow a Delete request on an Admin User" do
                                expect { delete user_path(admin) }.to_not change(User, :count).by(-1)
                        end
                end
        end
end



