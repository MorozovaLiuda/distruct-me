Hanami::Model.migration do
  change do
    add_column :messages, :distruct_method, Integer, default: 0
  end
end
