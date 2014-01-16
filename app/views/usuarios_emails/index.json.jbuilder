json.array!(@usuarios_emails) do |usuarios_email|
  json.extract! usuarios_email, :id, :nombre, :email, :identificador
  json.url usuarios_email_url(usuarios_email, format: :json)
end
