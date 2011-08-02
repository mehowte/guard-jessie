require 'guard'
require 'guard/guard'

module Guard
  class Jessie < Guard
    autoload :VERSION, 'guard/jessie/version'
    autoload :Runner,  'guard/jessie/runner'

    def run_all
      puts "Running all specs"
      Runner.run %w[spec]
    end

    def run_on_change paths
      paths_string = paths.map {|path| "#{path}" }.join(' ')
      puts "Running #{paths_string}"
      Runner.run paths
    end
  end
end

