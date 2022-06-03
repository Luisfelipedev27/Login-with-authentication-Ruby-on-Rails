require 'rails_helper'

describe User do 
    it "is valid when username, email and password are present" do 
      user = User.new( username: 'Luis', 
       email: 'Felipe', 
       password: 'p2p3p4p5p63p' ) 
       
       expect(user).to be_valid 
      end 
  end

describe User do 
    it "is not valid when username is null" do 
        user = User.new(username: nil)
        user.valid? #O objeto user é válido ??
        expect(user.errors[:username]).to include("can't be blank")
    end
end

describe User do 
    it "is invalid if there is aready a registered email address" do 
        user = User.create(username: "Luis", email: "luisfelipe1582@hotmail.com", password: "example12314")
        user = User.new(username: "Luis", email: "luisfelipe1582@hotmail.com", password: "example12314")
        user.valid?
            expect(user.errors[:email]).to include('has already been taken')
    end
end