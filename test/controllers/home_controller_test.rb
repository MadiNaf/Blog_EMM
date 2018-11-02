require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    #si je vais sur l'url de root
    get root_path
    #la reponse doit etre un succee (200) et pas une erreur 404 ou autre
    assert_response :success
  end
  
  
end
