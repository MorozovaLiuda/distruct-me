Hanami::Model.migration do
  change do
    add_column :messages, :show_start_time, DateTime
  end
end
