require 'test_helper'

class TicketsControllerTest < ActionController::TestCase
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post :create, ticket: { assigned_to_user_id: @ticket.assigned_to_user_id, contact_info_email: @ticket.contact_info_email, contact_info_phone: @ticket.contact_info_phone, notes: @ticket.notes, reported_by: @ticket.reported_by, spark_room_id: @ticket.spark_room_id, submitted_by_user_id: @ticket.submitted_by_user_id, title: @ticket.title }
    end

    assert_redirected_to ticket_path(assigns(:ticket))
  end

  test "should show ticket" do
    get :show, id: @ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket
    assert_response :success
  end

  test "should update ticket" do
    patch :update, id: @ticket, ticket: { assigned_to_user_id: @ticket.assigned_to_user_id, contact_info_email: @ticket.contact_info_email, contact_info_phone: @ticket.contact_info_phone, notes: @ticket.notes, reported_by: @ticket.reported_by, spark_room_id: @ticket.spark_room_id, submitted_by_user_id: @ticket.submitted_by_user_id, title: @ticket.title }
    assert_redirected_to ticket_path(assigns(:ticket))
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete :destroy, id: @ticket
    end

    assert_redirected_to tickets_path
  end
end
