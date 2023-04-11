require "test_helper"

class MyPatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_patient = my_patients(:one)
  end

  test "should get index" do
    get my_patients_url
    assert_response :success
  end

  test "should get new" do
    get new_my_patient_url
    assert_response :success
  end

  test "should create my_patient" do
    assert_difference("MyPatient.count") do
      post my_patients_url, params: { my_patient: { age: @my_patient.age, gender: @my_patient.gender, name: @my_patient.name, patient_card_id: @my_patient.patient_card_id } }
    end

    assert_redirected_to my_patient_url(MyPatient.last)
  end

  test "should show my_patient" do
    get my_patient_url(@my_patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_patient_url(@my_patient)
    assert_response :success
  end

  test "should update my_patient" do
    patch my_patient_url(@my_patient), params: { my_patient: { age: @my_patient.age, gender: @my_patient.gender, name: @my_patient.name, patient_card_id: @my_patient.patient_card_id } }
    assert_redirected_to my_patient_url(@my_patient)
  end

  test "should destroy my_patient" do
    assert_difference("MyPatient.count", -1) do
      delete my_patient_url(@my_patient)
    end

    assert_redirected_to my_patients_url
  end
end
