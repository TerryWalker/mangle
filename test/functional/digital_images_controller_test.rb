require 'test_helper'

class DigitalImagesControllerTest < ActionController::TestCase
  setup do
    @digital_image = digital_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:digital_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create digital_image" do
    assert_difference('DigitalImage.count') do
      post :create, digital_image: { author: @digital_image.author, original_publisher: @digital_image.original_publisher, publication_date: @digital_image.publication_date, title: @digital_image.title }
    end

    assert_redirected_to digital_image_path(assigns(:digital_image))
  end

  test "should show digital_image" do
    get :show, id: @digital_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @digital_image
    assert_response :success
  end

  test "should update digital_image" do
    put :update, id: @digital_image, digital_image: { author: @digital_image.author, original_publisher: @digital_image.original_publisher, publication_date: @digital_image.publication_date, title: @digital_image.title }
    assert_redirected_to digital_image_path(assigns(:digital_image))
  end

  test "should destroy digital_image" do
    assert_difference('DigitalImage.count', -1) do
      delete :destroy, id: @digital_image
    end

    assert_redirected_to digital_images_path
  end
end
