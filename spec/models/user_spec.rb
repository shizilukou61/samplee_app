require 'spec_helper'

describe User do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  before do
    @user = User.new(name: "Example User", 
                     email: "user@gmail.com",
                     password: "foobar",
                     password_confirmation: "foobar") 
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:authenticate) }

  it { should be_valid }


  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "email address with mixed case" do
    let(:mixed_case_email) { "Foo@ExaMPle.Com" }

    it "should be saved as all lower-case" do
      @user.email = mixed_case_email
      @user.save 
      expect(@user.reload.email).to eq mixed_case_email.downcase
    end
  end

  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_fo.org example.user@foo.
                     foo@foo_baz.com foo@bar+baz.com foo@bax..com]
      addresses.each do |invalid_address|
        #走这步测试时会运行models/user.rb的代码验证email正则
        @user.email = invalid_address

        expect(@user).not_to be_valid
      end
    end
  end

  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org first.list@foo.jp a+b@baz.cn foo@foo.com]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

  describe "when name is too long" do 
    before { @user.name = "a" * 51 } 
    it { should_not be_valid }
  end

  describe "when password is not present" do
    before do
      @user = User.new(name: "Example User", email: "user@example.c                       om", password: " ", password_confirmation: "                       ")
    end
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end

  describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
  end
end
