require "application_system_test_case"

class ServiciosTest < ApplicationSystemTestCase
  setup do
    @servicio = servicios(:one)
  end

  test "visiting the index" do
    visit servicios_url
    assert_selector "h1", text: "Servicios"
  end

  test "creating a Servicio" do
    visit servicios_url
    click_on "New Servicio"

    fill_in "Aislacion", with: @servicio.aislacion
    fill_in "Alarmas", with: @servicio.alarmas
    fill_in "Bases", with: @servicio.bases
    fill_in "Cable poder f1", with: @servicio.cable_poder_f1
    fill_in "Cable poder f2", with: @servicio.cable_poder_f2
    fill_in "Cable poder f3", with: @servicio.cable_poder_f3
    fill_in "Cable poder m", with: @servicio.cable_poder_m
    fill_in "Cables", with: @servicio.cables
    fill_in "Calefactor f1", with: @servicio.calefactor_f1
    fill_in "Calefactor f2", with: @servicio.calefactor_f2
    fill_in "Calefactor f3", with: @servicio.calefactor_f3
    fill_in "Calefactor m", with: @servicio.calefactor_m
    fill_in "Carcasa", with: @servicio.carcasa
    fill_in "Cliente", with: @servicio.cliente_id
    fill_in "Codigo qr", with: @servicio.codigo_qr
    fill_in "Compresor", with: @servicio.compresor
    fill_in "Compresor f1", with: @servicio.compresor_f1
    fill_in "Compresor f2", with: @servicio.compresor_f2
    fill_in "Compresor f3", with: @servicio.compresor_f3
    fill_in "Compresor m", with: @servicio.compresor_m
    fill_in "Condensador", with: @servicio.condensador
    fill_in "Conecciones", with: @servicio.conecciones
    fill_in "Correas", with: @servicio.correas
    fill_in "Corrosion", with: @servicio.corrosion
    fill_in "Detalles", with: @servicio.detalles
    fill_in "Direccion de ventiladores", with: @servicio.direccion_de_ventiladores
    fill_in "Drenajes", with: @servicio.drenajes
    fill_in "Enchufes", with: @servicio.enchufes
    fill_in "Equipo", with: @servicio.equipo_id
    fill_in "Estructura", with: @servicio.estructura
    fill_in "Evapodador", with: @servicio.evapodador
    fill_in "Fecha", with: @servicio.fecha
    fill_in "Filtro de aire", with: @servicio.filtro_de_aire
    fill_in "Firma solicitante", with: @servicio.firma_solicitante
    fill_in "Firma tecnico", with: @servicio.firma_tecnico
    fill_in "Imagen 1", with: @servicio.imagen_1
    fill_in "Imagen 2", with: @servicio.imagen_2
    fill_in "Imagen 3", with: @servicio.imagen_3
    fill_in "Insumos repuestos", with: @servicio.insumos_repuestos
    fill_in "Linea refrigetante", with: @servicio.linea_refrigetante
    fill_in "Lubricacion", with: @servicio.lubricacion
    fill_in "Luces e indicacdores", with: @servicio.luces_e_indicacdores
    fill_in "Nivel de aceite", with: @servicio.nivel_de_aceite
    fill_in "Nivel de refrigerante", with: @servicio.nivel_de_refrigerante
    fill_in "Otros", with: @servicio.otros
    fill_in "Partida normal", with: @servicio.partida_normal
    fill_in "Presion de descarga", with: @servicio.presion_de_descarga
    fill_in "Presion de succion", with: @servicio.presion_de_succion
    fill_in "Pruebas de funcionamiento", with: @servicio.pruebas_de_funcionamiento
    fill_in "Servicio", with: @servicio.servicio
    fill_in "Sobrecalentamiento", with: @servicio.sobrecalentamiento
    fill_in "Sobrecalor", with: @servicio.sobrecalor
    fill_in "Tarjeta de control", with: @servicio.tarjeta_de_control
    fill_in "Tension total f1", with: @servicio.tension_total_f1
    fill_in "Tension total f2", with: @servicio.tension_total_f2
    fill_in "Tension total f3", with: @servicio.tension_total_f3
    fill_in "Tension total m", with: @servicio.tension_total_m
    fill_in "Ventilador compresor f1", with: @servicio.ventilador_compresor_f1
    fill_in "Ventilador compresor f2", with: @servicio.ventilador_compresor_f2
    fill_in "Ventilador compresor f3", with: @servicio.ventilador_compresor_f3
    fill_in "Ventilador compresor m", with: @servicio.ventilador_compresor_m
    fill_in "Ventilador evapodar f3", with: @servicio.ventilador_evapodar_f3
    fill_in "Ventilador evaporador inyeccion f1", with: @servicio.ventilador_evaporador_inyeccion_f1
    fill_in "Ventilador evaporador inyeccion f2", with: @servicio.ventilador_evaporador_inyeccion_f2
    fill_in "Ventilador evaporador m", with: @servicio.ventilador_evaporador_m
    fill_in "Ventilador retorno f1", with: @servicio.ventilador_retorno_f1
    fill_in "Ventilador retorno f2", with: @servicio.ventilador_retorno_f2
    fill_in "Ventilador retorno f3", with: @servicio.ventilador_retorno_f3
    fill_in "Ventilador retorno m", with: @servicio.ventilador_retorno_m
    fill_in "Ventiladores", with: @servicio.ventiladores
    fill_in "Vibraciones y ruido", with: @servicio.vibraciones_y_ruido
    click_on "Create Servicio"

    assert_text "Servicio was successfully created"
    click_on "Back"
  end

  test "updating a Servicio" do
    visit servicios_url
    click_on "Edit", match: :first

    fill_in "Aislacion", with: @servicio.aislacion
    fill_in "Alarmas", with: @servicio.alarmas
    fill_in "Bases", with: @servicio.bases
    fill_in "Cable poder f1", with: @servicio.cable_poder_f1
    fill_in "Cable poder f2", with: @servicio.cable_poder_f2
    fill_in "Cable poder f3", with: @servicio.cable_poder_f3
    fill_in "Cable poder m", with: @servicio.cable_poder_m
    fill_in "Cables", with: @servicio.cables
    fill_in "Calefactor f1", with: @servicio.calefactor_f1
    fill_in "Calefactor f2", with: @servicio.calefactor_f2
    fill_in "Calefactor f3", with: @servicio.calefactor_f3
    fill_in "Calefactor m", with: @servicio.calefactor_m
    fill_in "Carcasa", with: @servicio.carcasa
    fill_in "Cliente", with: @servicio.cliente_id
    fill_in "Codigo qr", with: @servicio.codigo_qr
    fill_in "Compresor", with: @servicio.compresor
    fill_in "Compresor f1", with: @servicio.compresor_f1
    fill_in "Compresor f2", with: @servicio.compresor_f2
    fill_in "Compresor f3", with: @servicio.compresor_f3
    fill_in "Compresor m", with: @servicio.compresor_m
    fill_in "Condensador", with: @servicio.condensador
    fill_in "Conecciones", with: @servicio.conecciones
    fill_in "Correas", with: @servicio.correas
    fill_in "Corrosion", with: @servicio.corrosion
    fill_in "Detalles", with: @servicio.detalles
    fill_in "Direccion de ventiladores", with: @servicio.direccion_de_ventiladores
    fill_in "Drenajes", with: @servicio.drenajes
    fill_in "Enchufes", with: @servicio.enchufes
    fill_in "Equipo", with: @servicio.equipo_id
    fill_in "Estructura", with: @servicio.estructura
    fill_in "Evapodador", with: @servicio.evapodador
    fill_in "Fecha", with: @servicio.fecha
    fill_in "Filtro de aire", with: @servicio.filtro_de_aire
    fill_in "Firma solicitante", with: @servicio.firma_solicitante
    fill_in "Firma tecnico", with: @servicio.firma_tecnico
    fill_in "Imagen 1", with: @servicio.imagen_1
    fill_in "Imagen 2", with: @servicio.imagen_2
    fill_in "Imagen 3", with: @servicio.imagen_3
    fill_in "Insumos repuestos", with: @servicio.insumos_repuestos
    fill_in "Linea refrigetante", with: @servicio.linea_refrigetante
    fill_in "Lubricacion", with: @servicio.lubricacion
    fill_in "Luces e indicacdores", with: @servicio.luces_e_indicacdores
    fill_in "Nivel de aceite", with: @servicio.nivel_de_aceite
    fill_in "Nivel de refrigerante", with: @servicio.nivel_de_refrigerante
    fill_in "Otros", with: @servicio.otros
    fill_in "Partida normal", with: @servicio.partida_normal
    fill_in "Presion de descarga", with: @servicio.presion_de_descarga
    fill_in "Presion de succion", with: @servicio.presion_de_succion
    fill_in "Pruebas de funcionamiento", with: @servicio.pruebas_de_funcionamiento
    fill_in "Servicio", with: @servicio.servicio
    fill_in "Sobrecalentamiento", with: @servicio.sobrecalentamiento
    fill_in "Sobrecalor", with: @servicio.sobrecalor
    fill_in "Tarjeta de control", with: @servicio.tarjeta_de_control
    fill_in "Tension total f1", with: @servicio.tension_total_f1
    fill_in "Tension total f2", with: @servicio.tension_total_f2
    fill_in "Tension total f3", with: @servicio.tension_total_f3
    fill_in "Tension total m", with: @servicio.tension_total_m
    fill_in "Ventilador compresor f1", with: @servicio.ventilador_compresor_f1
    fill_in "Ventilador compresor f2", with: @servicio.ventilador_compresor_f2
    fill_in "Ventilador compresor f3", with: @servicio.ventilador_compresor_f3
    fill_in "Ventilador compresor m", with: @servicio.ventilador_compresor_m
    fill_in "Ventilador evapodar f3", with: @servicio.ventilador_evapodar_f3
    fill_in "Ventilador evaporador inyeccion f1", with: @servicio.ventilador_evaporador_inyeccion_f1
    fill_in "Ventilador evaporador inyeccion f2", with: @servicio.ventilador_evaporador_inyeccion_f2
    fill_in "Ventilador evaporador m", with: @servicio.ventilador_evaporador_m
    fill_in "Ventilador retorno f1", with: @servicio.ventilador_retorno_f1
    fill_in "Ventilador retorno f2", with: @servicio.ventilador_retorno_f2
    fill_in "Ventilador retorno f3", with: @servicio.ventilador_retorno_f3
    fill_in "Ventilador retorno m", with: @servicio.ventilador_retorno_m
    fill_in "Ventiladores", with: @servicio.ventiladores
    fill_in "Vibraciones y ruido", with: @servicio.vibraciones_y_ruido
    click_on "Update Servicio"

    assert_text "Servicio was successfully updated"
    click_on "Back"
  end

  test "destroying a Servicio" do
    visit servicios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Servicio was successfully destroyed"
  end
end
