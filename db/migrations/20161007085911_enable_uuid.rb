Hanami::Model.migration do
  change do
    run 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp"'
  end
end
