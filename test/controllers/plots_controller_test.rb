require 'test_helper'

class PlotsControllerTest < ActionController::TestCase
  setup do
    @plot = plots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plot" do
    assert_difference('Plot.count') do
      post :create, plot: { approved: @plot.approved, birth: @plot.birth, cemetery_id: @plot.cemetery_id, created_by_id: @plot.created_by_id, death: @plot.death, description: @plot.description, father: @plot.father, find_a_grave: @plot.find_a_grave, first_name: @plot.first_name, last_name: @plot.last_name, middle_name: @plot.middle_name, mother: @plot.mother, rank: @plot.rank, spouse: @plot.spouse, unit: @plot.unit }
    end

    assert_redirected_to plot_path(assigns(:plot))
  end

  test "should show plot" do
    get :show, id: @plot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plot
    assert_response :success
  end

  test "should update plot" do
    patch :update, id: @plot, plot: { approved: @plot.approved, birth: @plot.birth, cemetery_id: @plot.cemetery_id, created_by_id: @plot.created_by_id, death: @plot.death, description: @plot.description, father: @plot.father, find_a_grave: @plot.find_a_grave, first_name: @plot.first_name, last_name: @plot.last_name, middle_name: @plot.middle_name, mother: @plot.mother, rank: @plot.rank, spouse: @plot.spouse, unit: @plot.unit }
    assert_redirected_to plot_path(assigns(:plot))
  end

  test "should destroy plot" do
    assert_difference('Plot.count', -1) do
      delete :destroy, id: @plot
    end

    assert_redirected_to plots_path
  end
end
