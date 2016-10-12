require 'hanami/model'

class Message
  include Hanami::Entity
  attributes :id, :text, :current_clicks, :total_amount, :distruct_method, :show_start_time, :client_password
end

class MessageRepository
  include Hanami::Repository
end

Hanami::Model.configure do
  adapter type: :sql, uri: ENV['DATABASE_URL']


  mapping do
    collection :messages do
      entity     Message
      repository MessageRepository
        attribute :id, String
        attribute :text, String
        attribute :current_clicks,  Integer
        attribute :total_amount,  Integer
        attribute :distruct_method, Integer
        attribute :show_start_time, Time
        attribute :client_password, String
    end
  end
end

Hanami::Model.load!
