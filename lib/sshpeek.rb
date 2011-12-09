require 'net/ssh'

module SSH
  module Peek

    PATTERNS = {
      :host => 'Host',
      :host_name => 'HostName',
      :user => 'User'
    }

    class << self
      def host(args)
        hosts = args.map { |arg| { :host => arg, :config => Net::SSH::Config.for(arg) } }
        hosts.map! do |h|
          if h[:config].empty?
            "No Host Found: #{h[:host]}"
          else
            v = "Host: #{h[:host]}\n"
            h[:config].each do |key, value|
              v << "\t#{PATTERNS[key]}: #{value}\n"
            end
            v
          end
        end

        hosts.join("\n")
      end

      def search(args)
        puts Net::SSH::Config.load()
      end
    end
  end
end
