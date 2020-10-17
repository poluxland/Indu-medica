require 'test_helper'

class ServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servicio = servicios(:one)
  end

  test "should get index" do
    get servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_servicio_url
    assert_response :success
  end

  test "should create servicio" do
    assert_difference('Servicio.count') do
      post servicios_url, params: { servicio: { aislacion: @servicio.aislacion, alarmas: @servicio.alarmas, bases: @servicio.bases, cable_poder_f1: @servicio.cable_poder_f1, cable_poder_f2: @servicio.cable_poder_f2, cable_poder_f3: @servicio.cable_poder_f3, cable_poder_m: @servicio.cable_poder_m, cables: @servicio.cables, calefactor_f1: @servicio.calefactor_f1, calefactor_f2: @servicio.calefactor_f2, calefactor_f3: @servicio.calefactor_f3, calefactor_m: @servicio.calefactor_m, carcasa: @servicio.carcasa, cliente_id: @servicio.cliente_id, codigo_qr: @servicio.codigo_qr, compresor: @servicio.compresor, compresor_f1: @servicio.compresor_f1, compresor_f2: @servicio.compresor_f2, compresor_f3: @servicio.compresor_f3, compresor_m: @servicio.compresor_m, condensador: @servicio.condensador, conecciones: @servicio.conecciones, correas: @servicio.correas, corrosion: @servicio.corrosion, detalles: @servicio.detalles, direccion_de_ventiladores: @servicio.direccion_de_ventiladores, drenajes: @servicio.drenajes, enchufes: @servicio.enchufes, equipo_id: @servicio.equipo_id, estructura: @servicio.estructura, evapodador: @servicio.evapodador, fecha: @servicio.fecha, filtro_de_aire: @servicio.filtro_de_aire, firma_solicitante: @servicio.firma_solicitante, firma_tecnico: @servicio.firma_tecnico, imagen_1: @servicio.imagen_1, imagen_2: @servicio.imagen_2, imagen_3: @servicio.imagen_3, insumos_repuestos: @servicio.insumos_repuestos, linea_refrigetante: @servicio.linea_refrigetante, lubricacion: @servicio.lubricacion, luces_e_indicacdores: @servicio.luces_e_indicacdores, nivel_de_aceite: @servicio.nivel_de_aceite, nivel_de_refrigerante: @servicio.nivel_de_refrigerante, otros: @servicio.otros, partida_normal: @servicio.partida_normal, presion_de_descarga: @servicio.presion_de_descarga, presion_de_succion: @servicio.presion_de_succion, pruebas_de_funcionamiento: @servicio.pruebas_de_funcionamiento, servicio: @servicio.servicio, sobrecalentamiento: @servicio.sobrecalentamiento, sobrecalor: @servicio.sobrecalor, tarjeta_de_control: @servicio.tarjeta_de_control, tension_total_f1: @servicio.tension_total_f1, tension_total_f2: @servicio.tension_total_f2, tension_total_f3: @servicio.tension_total_f3, tension_total_m: @servicio.tension_total_m, ventilador_compresor_f1: @servicio.ventilador_compresor_f1, ventilador_compresor_f2: @servicio.ventilador_compresor_f2, ventilador_compresor_f3: @servicio.ventilador_compresor_f3, ventilador_compresor_m: @servicio.ventilador_compresor_m, ventilador_evapodar_f3: @servicio.ventilador_evapodar_f3, ventilador_evaporador_inyeccion_f1: @servicio.ventilador_evaporador_inyeccion_f1, ventilador_evaporador_inyeccion_f2: @servicio.ventilador_evaporador_inyeccion_f2, ventilador_evaporador_m: @servicio.ventilador_evaporador_m, ventilador_retorno_f1: @servicio.ventilador_retorno_f1, ventilador_retorno_f2: @servicio.ventilador_retorno_f2, ventilador_retorno_f3: @servicio.ventilador_retorno_f3, ventilador_retorno_m: @servicio.ventilador_retorno_m, ventiladores: @servicio.ventiladores, vibraciones_y_ruido: @servicio.vibraciones_y_ruido } }
    end

    assert_redirected_to servicio_url(Servicio.last)
  end

  test "should show servicio" do
    get servicio_url(@servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_servicio_url(@servicio)
    assert_response :success
  end

  test "should update servicio" do
    patch servicio_url(@servicio), params: { servicio: { aislacion: @servicio.aislacion, alarmas: @servicio.alarmas, bases: @servicio.bases, cable_poder_f1: @servicio.cable_poder_f1, cable_poder_f2: @servicio.cable_poder_f2, cable_poder_f3: @servicio.cable_poder_f3, cable_poder_m: @servicio.cable_poder_m, cables: @servicio.cables, calefactor_f1: @servicio.calefactor_f1, calefactor_f2: @servicio.calefactor_f2, calefactor_f3: @servicio.calefactor_f3, calefactor_m: @servicio.calefactor_m, carcasa: @servicio.carcasa, cliente_id: @servicio.cliente_id, codigo_qr: @servicio.codigo_qr, compresor: @servicio.compresor, compresor_f1: @servicio.compresor_f1, compresor_f2: @servicio.compresor_f2, compresor_f3: @servicio.compresor_f3, compresor_m: @servicio.compresor_m, condensador: @servicio.condensador, conecciones: @servicio.conecciones, correas: @servicio.correas, corrosion: @servicio.corrosion, detalles: @servicio.detalles, direccion_de_ventiladores: @servicio.direccion_de_ventiladores, drenajes: @servicio.drenajes, enchufes: @servicio.enchufes, equipo_id: @servicio.equipo_id, estructura: @servicio.estructura, evapodador: @servicio.evapodador, fecha: @servicio.fecha, filtro_de_aire: @servicio.filtro_de_aire, firma_solicitante: @servicio.firma_solicitante, firma_tecnico: @servicio.firma_tecnico, imagen_1: @servicio.imagen_1, imagen_2: @servicio.imagen_2, imagen_3: @servicio.imagen_3, insumos_repuestos: @servicio.insumos_repuestos, linea_refrigetante: @servicio.linea_refrigetante, lubricacion: @servicio.lubricacion, luces_e_indicacdores: @servicio.luces_e_indicacdores, nivel_de_aceite: @servicio.nivel_de_aceite, nivel_de_refrigerante: @servicio.nivel_de_refrigerante, otros: @servicio.otros, partida_normal: @servicio.partida_normal, presion_de_descarga: @servicio.presion_de_descarga, presion_de_succion: @servicio.presion_de_succion, pruebas_de_funcionamiento: @servicio.pruebas_de_funcionamiento, servicio: @servicio.servicio, sobrecalentamiento: @servicio.sobrecalentamiento, sobrecalor: @servicio.sobrecalor, tarjeta_de_control: @servicio.tarjeta_de_control, tension_total_f1: @servicio.tension_total_f1, tension_total_f2: @servicio.tension_total_f2, tension_total_f3: @servicio.tension_total_f3, tension_total_m: @servicio.tension_total_m, ventilador_compresor_f1: @servicio.ventilador_compresor_f1, ventilador_compresor_f2: @servicio.ventilador_compresor_f2, ventilador_compresor_f3: @servicio.ventilador_compresor_f3, ventilador_compresor_m: @servicio.ventilador_compresor_m, ventilador_evapodar_f3: @servicio.ventilador_evapodar_f3, ventilador_evaporador_inyeccion_f1: @servicio.ventilador_evaporador_inyeccion_f1, ventilador_evaporador_inyeccion_f2: @servicio.ventilador_evaporador_inyeccion_f2, ventilador_evaporador_m: @servicio.ventilador_evaporador_m, ventilador_retorno_f1: @servicio.ventilador_retorno_f1, ventilador_retorno_f2: @servicio.ventilador_retorno_f2, ventilador_retorno_f3: @servicio.ventilador_retorno_f3, ventilador_retorno_m: @servicio.ventilador_retorno_m, ventiladores: @servicio.ventiladores, vibraciones_y_ruido: @servicio.vibraciones_y_ruido } }
    assert_redirected_to servicio_url(@servicio)
  end

  test "should destroy servicio" do
    assert_difference('Servicio.count', -1) do
      delete servicio_url(@servicio)
    end

    assert_redirected_to servicios_url
  end
end
