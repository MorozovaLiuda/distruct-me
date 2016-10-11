module Web::Controllers::Messages
  class Destroy
    include Web::Action

    def call(params)
      @message = MessageRepository.find(params[:id])
      MessageRepository.delete(@message)
      self.body = 'OK'
    end
  end
end
