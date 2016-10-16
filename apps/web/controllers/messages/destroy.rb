module Web::Controllers::Messages
  class Destroy
    include Web::Action

    def initialize(repository: MessageRepository)
      @repository = repository
    end

    def call(params)
      @message = MessageRepository.find(params[:id])
      MessageRepository.delete(@message)
      self.body = 'OK'
    end
  end
end
