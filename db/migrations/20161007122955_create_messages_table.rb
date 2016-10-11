Hanami::Model.migration do
  change do
    create_table :messages do
      primary_key :id, :uuid, default: Sequel.function(:uuid_generate_v4)
        column :text, String
        column :current_clicks, Integer, default: 1
        column :total_clicks, Integer, default: 1
     end
  end
end
