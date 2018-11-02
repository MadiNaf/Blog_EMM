require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(sex: "Mr", firstname:"nom", lastname: "prenom")
  end
  
  test "should be valid" do
    assert @user.valid?
  end

#Je teste le sex de l'utilisateur si il est vide alors il n'est pas valide 
  test "sex should be present" do
    @user.sex = "   "
    assert_not @user.valid?
  end
#Je teste le nom de l'utilisateur si il est vide alors il n'est pas valide 
  test "firstname should be present" do
    @user.firstname = "   "
    assert_not @user.valid?
  end
#Et je fait pareille pour le prenom 
  test "lastname should be present" do
    @user.lastname = "   "
    assert_not @user.valid?
  end
  
#Le nombre de caractere du nom et du prenom ne doit pas etre trop long
  test "firstname should not be too long" do
    @user.firstname = "a" * 26
    assert_not @user.valid?
  end

  test "lastname should not be too long" do
    @user.lastname = "a" * 26
    assert_not @user.valid?
  end

#Le nombre de caractere du nom et du prenom ne doit pas etre trop court
  test "firstname should not be too short" do
    @user.firstname = "a" * 2
    assert_not @user.valid?
  end

  test "lastname should not be too short" do
    @user.lastname = "a" * 2
    assert_not @user.valid?
  end
  

end
