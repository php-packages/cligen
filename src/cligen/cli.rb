module Cligen
    require "optparse"

    # Command Line Interface (CLI).
    # This class manages everything related.
    class Cli
        attr_reader :config

        def initialize
            @config = Dir.getwd
        end
        # This method initializes and configures OptionParser.
        # Returns a new instance of OptionParser.
        def setup
            OptionParser.new do |options|
                options.banner = "Usage: cligen generate [options]"

                options.on("-h", "--help", "Prints help message") do
                    puts options
                    exit
                end

                options.on("-c=PATH", "--config=PATH", "Config file to use") do |config|
                    @config = config
                end
            end
        end
    end
end
