module Web::Controllers::Messages
  class Show
    include Web::Action
    before :destroy?
    expose :message
    expose :decrypted_text
    expose :countdown
    expose :clicks_left

    def call(params)
    end

    private
    def destroy?
      @message = MessageRepository.find(params[:id])
      if @message
        if @message.client_password.nil?
          @decrypted_text = AESCrypt.decrypt(@message.text, ENV['AES_PASSWORD'])
        end
        if @message.distruct_method == 0
          if @message.total_amount == @message.current_clicks
            MessageRepository.delete(@message)
          else
            @clicks_left = @message.total_amount - @message.current_clicks
            @message.current_clicks+=1
            MessageRepository.update(@message)
          end
        else
          if @message.show_start_time.nil?
            @message.show_start_time = Time.now
            MessageRepository.update(@message)
            @countdown = Time.now + @message.total_amount * 3600
          elsif (@message.show_start_time+ @message.total_amount * 3600) < Time.now
            MessageRepository.delete(@message)
          elsif  (@message.show_start_time + @message.total_amount * 3600) > Time.now
            time_left = @message.show_start_time  + @message.total_amount * 3600 - Time.now
            @countdown = Time.now + time_left
          end
        end
      end
    end
  end
end
