Hanami::Model.migration do
  change do
    rename_column :messages, :total_clicks, :total_amount
  end
end
