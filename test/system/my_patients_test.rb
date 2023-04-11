require "application_system_test_case"

class MyPatientsTest < ApplicationSystemTestCase
  setup do
    @my_patient = my_patients(:one)
  end

  test "visiting the index" do
    visit my_patients_url
    assert_selector "h1", text: "My patients"
  end

  test "should create my patient" do
    visit my_patients_url
    click_on "New my patient"

    fill_in "Age", with: @my_patient.age
    fill_in "Gender", with: @my_patient.gender
    fill_in "Name", with: @my_patient.name
    fill_in "Patient card", with: @my_patient.patient_card_id
    click_on "Create My patient"

    assert_text "My patient was successfully created"
    click_on "Back"
  end

  test "should update My patient" do
    visit my_patient_url(@my_patient)
    click_on "Edit this my patient", match: :first

    fill_in "Age", with: @my_patient.age
    fill_in "Gender", with: @my_patient.gender
    fill_in "Name", with: @my_patient.name
    fill_in "Patient card", with: @my_patient.patient_card_id
    click_on "Update My patient"

    assert_text "My patient was successfully updated"
    click_on "Back"
  end

  test "should destroy My patient" do
    visit my_patient_url(@my_patient)
    click_on "Destroy this my patient", match: :first

    assert_text "My patient was successfully destroyed"
  end
end
