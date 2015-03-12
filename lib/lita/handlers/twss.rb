require 'twss'

module Lita
  module Handlers
    class Twss < Handler
      on :unhandled_message, :reply

      def reply(payload)
        message = payload[:message]
        if TWSS(message.body)
          message.reply("That's what she said!")
        end
      end
    end

    Lita.register_handler(Twss)
  end
end
