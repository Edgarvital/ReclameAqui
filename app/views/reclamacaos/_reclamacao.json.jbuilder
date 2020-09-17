json.extract! reclamacao, :id, :titulo, :texto, :categoria, :empresa, :created_at, :updated_at
json.url reclamacao_url(reclamacao, format: :json)
