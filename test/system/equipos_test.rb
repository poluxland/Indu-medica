require "application_system_test_case"

class EquiposTest < ApplicationSystemTestCase
  setup do
    @equipo = equipos(:one)
  end

  test "visiting the index" do
    visit equipos_url
    assert_selector "h1", text: "Equipos"
  end

  test "creating a Equipo" do
    visit equipos_url
    click_on "New Equipo"

    fill_in "Año", with: @equipo.año
    fill_in "Cliente", with: @equipo.cliente_id
    fill_in "Gas", with: @equipo.gas
    fill_in "Modelo ue", with: @equipo.modelo_ue
    fill_in "Modelo ui", with: @equipo.modelo_ui
    fill_in "Nombre oficinas", with: @equipo.nombre_oficinas
    fill_in "Oficinas", with: @equipo.oficinas
    fill_in "Serie", with: @equipo.serie
    fill_in "Ubicacion ue", with: @equipo.ubicacion_ue
    fill_in "Ubicacion ui", with: @equipo.ubicacion_ui
    fill_in "Unidad master", with: @equipo.unidad_master
    fill_in "Voltaje", with: @equipo.voltaje
    click_on "Create Equipo"

    assert_text "Equipo was successfully created"
    click_on "Back"
  end

  test "updating a Equipo" do
    visit equipos_url
    click_on "Edit", match: :first

    fill_in "Año", with: @equipo.año
    fill_in "Cliente", with: @equipo.cliente_id
    fill_in "Gas", with: @equipo.gas
    fill_in "Modelo ue", with: @equipo.modelo_ue
    fill_in "Modelo ui", with: @equipo.modelo_ui
    fill_in "Nombre oficinas", with: @equipo.nombre_oficinas
    fill_in "Oficinas", with: @equipo.oficinas
    fill_in "Serie", with: @equipo.serie
    fill_in "Ubicacion ue", with: @equipo.ubicacion_ue
    fill_in "Ubicacion ui", with: @equipo.ubicacion_ui
    fill_in "Unidad master", with: @equipo.unidad_master
    fill_in "Voltaje", with: @equipo.voltaje
    click_on "Update Equipo"

    assert_text "Equipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipo" do
    visit equipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipo was successfully destroyed"
  end
end
