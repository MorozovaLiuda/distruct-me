require 'hanami/model'
require 'hanami/mailer'
Dir["#{ __dir__ }/distruct_me/**/*.rb"].each { |file| require_relative file }

Hanami::Model.configure do
  ##
  # Database adapter
  #
  # Available options:
  #
  #  * File System adapter
  #    adapter type: :file_system, uri: 'file:///db/bookshelf_development'
  #
  #  * Memory adapter
  #    adapter type: :memory, uri: 'memory://localhost/distruct_me_development'
  #
  #  * SQL adapter
  #    adapter type: :sql, uri: 'sqlite://db/distruct_me_development.sqlite3'
       # adapter type: :sql, uri: DATABASE_URL
  #    adapter type: :sql, uri: 'mysql://localhost/distruct_me_development'
  #
  adapter type: :sql, uri: ENV['DATABASE_URL']

  ##
  # Migrations
  #
  migrations 'db/migrations'
  schema     'db/schema.sql'

  ##
  # Database mapping
  #
  # Intended for specifying application wide mappings.
  #
  # mapping do
    # collection :users do
    #   entity     User
    #   repository UserRepository
    #
    #   attribute :id,   Integer
    #   attribute :name, String
    # end
  # end
end.load!

Hanami::Mailer.configure do
  root "#{ __dir__ }/distruct_me/mailers"

  # See http://hanamirb.org/guides/mailers/delivery
  delivery do
    development :test
    test        :test
    # production :smtp, address: ENV['SMTP_PORT'], port: 1025
  end
end.load!
