require "digest/md5"

module Devise
  module Encryptors
    # = MD5
    class Md5 < Base
      # Gererates a default password digest based on salt, pepper and the
      # incoming password.
      def self.digest(password, stretches, salt, pepper)
        Digest::MD5.hexdigest(password)
      end
    end
  end
end