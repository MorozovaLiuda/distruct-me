module Web::Controllers::Messages
  class Create
    include Web::Action
    after :encrypt_text

    expose :message

    def call(params)
      @message = MessageRepository.create(Message.new(params[:message]))
    end

    private
    def encrypt_text
     if @message.client_password.nil?
      @message.text = AESCrypt.encrypt(@message.text, ENV['AES_PASSWORD'])
      MessageRepository.update(@message)
     end
    end
  end
end
