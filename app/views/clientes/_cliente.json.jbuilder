json.extract! cliente, :id, :nombre, :rut, :fono, :direccion, :sede, :otros, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
