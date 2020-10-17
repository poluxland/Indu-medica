require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "New Cliente"

    fill_in "Direccion", with: @cliente.direccion
    fill_in "Fono", with: @cliente.fono
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Otros", with: @cliente.otros
    fill_in "Rut", with: @cliente.rut
    fill_in "Sede", with: @cliente.sede
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Edit", match: :first

    fill_in "Direccion", with: @cliente.direccion
    fill_in "Fono", with: @cliente.fono
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Otros", with: @cliente.otros
    fill_in "Rut", with: @cliente.rut
    fill_in "Sede", with: @cliente.sede
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
