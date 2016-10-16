Hanami::Model.migration do
  change do
    set_column_type :messages, :show_start_time, Time
  end
end
