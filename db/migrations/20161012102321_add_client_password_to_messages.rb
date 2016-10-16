Hanami::Model.migration do
  change do
    add_column :messages, :client_password, String
  end
end
